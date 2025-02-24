(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *) 
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 

(* 目的: 学生リスト lst のうち成績が A の人の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst = match lst with
| [] -> 0
| {namae = n; tensuu = t; seiseki = s} :: rest ->
    if s = "A" then 1 + count_A rest
               else count_A rest

(* テストデータ *)
let lst1 = []
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "A"}; {namae = "asai"; tensuu = 70; seiseki = "A"}]

(* テスト *)
let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 1

let test1 = count_A lst1 = 0;;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool test1);;

let test2 = count_A lst2 = 2;;
let () = Printf.printf "test2: ";;
print_endline (string_of_bool test2);;