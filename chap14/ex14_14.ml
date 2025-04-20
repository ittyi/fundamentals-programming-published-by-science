let () = Printf.printf "Hello\n";;

let concat lst = List.fold_right (^) lst "";;

let () = Printf.printf "\n~~ let concat test ~~ \n";;
let test1 = concat [] = ""
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;
let test2 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;
