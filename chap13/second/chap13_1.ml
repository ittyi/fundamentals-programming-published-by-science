(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *) 
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 

(* テストデータ *)
let lst1 = []
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "A"}; {namae = "asai"; tensuu = 70; seiseki = "A"}; {namae = "asai"; tensuu = 70; seiseki = "B"}]

(* 目的: 学生リスト lst のうち、与えられた入力と成績が一致する人の数を返す *)
(* count_evaluation : gakusei_t list -> string -> int *)
let rec count_evaluation lst eval = match lst with
| [] -> 0
| {namae = n; tensuu = t; seiseki = s} :: rest ->
    if s = eval
        then 1 + count_evaluation rest eval
        else count_evaluation rest eval

let count_evaluation_test1 = count_evaluation lst1 "A" = 0;;
let () = Printf.printf "count_evaluation_test1: ";;
print_endline (string_of_bool count_evaluation_test1);;

let count_evaluation_test2 = count_evaluation lst2 "A" = 2;;
let () = Printf.printf "count_evaluation_test2: ";;
print_endline (string_of_bool count_evaluation_test2);;

let count_evaluation_test3 = count_evaluation lst2 "B" = 1;;
let () = Printf.printf "count_evaluation_test3: ";;
print_endline (string_of_bool count_evaluation_test3);;

(* 目的: 学生リスト lst のうち成績が A の人の数を返す *)
(* count_A : gakusei_t list -> int *)
(* let rec count_A lst = match lst with
| [] -> 0
| {namae = n; tensuu = t; seiseki = s} :: rest ->
    if s = "A" then 1 + count_A rest
               else count_A rest *)
let count_A lst = count_evaluation lst "A"

(* テスト *)
let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 1

let test1 = count_A lst1 = 0;;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool test1);;

let test2 = count_A lst2 = 2;;
let () = Printf.printf "test2: ";;
print_endline (string_of_bool test2);;