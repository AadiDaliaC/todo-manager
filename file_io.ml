(* file_io.ml *)

open Todo

(* File path for storing the to-do list data *)
let todo_list_file = "todo_list.txt"

(* Function to load the to-do list from a file *)
let load_todo_list () : todo_list =
  try
    let ic = open_in todo_list_file in
    let rec read_tasks acc =
      match input_line ic with
      | line ->
          let task_id, task_title, task_description = Scanf.sscanf line "[%d] %[^:]: %[^\n]" (fun id title desc -> id, title, desc) in
          let task = { task_id; task_title; task_description } in
          read_tasks (task :: acc)
      | exception End_of_file -> List.rev acc
    in
    let tasks = read_tasks [] in
    close_in ic;
    tasks
  with
  | Sys_error _ -> []
  | _ -> failwith "Error: Failed to load the to-do list from the file."

(* Function to save the to-do list to a file *)
let save_todo_list (list : todo_list) : unit =
  let oc = open_out todo_list_file in
  List.iter (fun task ->
      Printf.fprintf oc "[%d] %s: %s\n" task.task_id task.task_title task.task_description
    ) list;
  close_out oc
