let () = Printf.printf "hello\n\n";;

(* データ定義
   [] : 空リスト
   first :: rest　-> 最初の要素が first で残りのリストが rest
    ( rest が自己参照のケース) *)

(* 目的: 整数のリストのうち、偶数の要素をリスト化して返す *)
(* even : int list -> int list *)
let rec even lst = match lst with
| [] -> []
| first :: rest -> 
  if first mod 2 == 0 
    then first :: even rest
    else even rest

(* test: #use "ex9_5.ml";; or ocaml chap14_1.ml *)
let () = Printf.printf "~~let rec even test ~~\n";;
let test1 = even [] = []
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;
let test2 = even [2; 1; 6; 4; 7] = [2; 6; 4]
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;
let test3 = even [1; 5; 7] = []
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;
let test4 = even [2; 6; 4] = [2; 6; 4]
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;

(* いえーい
val even : int list -> int list = <fun>
val test1 : bool = true
val test2 : bool = true
val test3 : bool = true
val test2 : bool = true *)

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