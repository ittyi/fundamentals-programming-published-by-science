let () = Printf.printf "helolo\n";;

(* 目的：lst の中から n より小さい要素のみを取り出す *)
(* take_less : int -> int list -> int list *)
let take_less border lst =
    List.filter ( fun first -> first < border ) lst

let take_less border lst = [] (* 未完成 *)

(* 目的：lst の中から n より大きい要素のみを取り出す *)
(* take_greater : int -> int list -> int list *)
let take_greater border lst =
    List.filter ( fun first -> first > border ) lst

let take_greater border lst = [] (* 未完成 *)

(* 目的：受け取った lst をクイックソートを使って昇順に整列する *)
(* quick_sort : int list -> int list *)
(* 部分問題の生成が完了した状態が以下
let rec quick_sort lst = match lst with
| [] -> [] (* 自明に答えが出るケース *)
| f :: r -> [] (* それ以外のケース *)
                (* take_less f r *)
                (* take_greater f r *)
*)

(* 部分問題のを解いた状態が以下
let rec quick_sort lst = match lst with
| [] -> [] (* 自明に答えが出るケース *)
| f :: r -> [] (* それ以外のケース *)
                (* quick_sort (* take_less f r *)*)
                (* quick_sort (* take_greater f r *)*)
*)

(* 全体の解が以下 *)
let rec quick_sort lst = match lst with
| [] -> [] (* 自明に答えが出るケース *)
| f :: r -> quick_sort (take_less f r)
    @ [first]
    @ quick_sort (take_greater f r)


(* テスト *) 
let () = Printf.printf "\n~~ quick_sort test ~~ \n"
let test1 = quick_sort [] = []
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = quick_sort [1] = [1]
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

let test3 = quick_sort [1; 2] = [1; 2]
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;

let test4 = quick_sort [2; 1] = [1; 2]
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;

let test5 = quick_sort [5; 4; 9; 8; 2; 3] = [2; 3; 4; 5; 8; 9]
let () = Printf.printf "test5: ";;
print_endline (string_of_bool (test5 = true));;
