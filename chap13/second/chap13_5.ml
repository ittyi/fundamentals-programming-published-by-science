let twice f = 
  let g x = f (f x)
  in g;;

let add3 x = x + 3

let test1 = twice add3 7;;

let test1 = twice add3 7;;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = 13));;

let test2 = twice add3 0;;
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = 6));;
