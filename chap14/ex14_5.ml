let () = Printf.printf "Hello\n";;

let isEven n = n mod 2 == 0

let () = Printf.printf "\n~~let isEven test ~~\n";;
let test1 = isEven 1
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = false));;
let test2 = isEven 2
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

(* 関数 even を List.filter を使って書き直す *)
let even f lst = List.filter isEven lst

let () = Printf.printf "\n~~let even test ~~\n";;
let test1 = even isEven [] = []
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;
let test2 = even isEven [2; 1; 6; 4; 7] = [2; 6; 4]
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;
let test3 = even isEven [1; 5; 7] = []
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;
let test4 = even isEven [2; 6; 4] = [2; 6; 4]
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;
