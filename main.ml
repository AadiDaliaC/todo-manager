(* main.ml *)

open Todo
open File_io
open User_input

let () =
  let todo_list = load_todo_list () in
  let id_counter =
    match List.map (fun task -> task.task_id) todo_list with
    | [] -> 1
    | ids -> List.fold_left max (List.hd ids) ids + 1
  in
  let updated_list = process_user_action todo_list id_counter in
  save_todo_list updated_list
