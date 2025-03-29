let () = Printf.printf "hello\n\n";;

(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *) 
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 
 
(* gakusei_t list は 
     - []              空リスト、あるいは 
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は gakusei_t 型、 
                         rest が自己参照のケース） 
   という形 *) 


(* gakusei_t list 型のデータの例 *) 
let lst1 = [] 
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}] 
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 
let lst4 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"}; 
            {namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 

(* 目的：学生リスト lst のうち成績が A の人の数を返す *) 
(* count_A : gakusei_t list -> int *) 
(* 例1
let rec count_A lst = match lst with
  [] -> 0
| first :: rest -> (
  match first with 
    {namae = n; tensuu = t; seiseki = s} -> 0 (* count_A rest *)
) *)

let rec count_A lst = match lst with
  [] -> 0
| {namae = n; tensuu = t; seiseki = s} :: rest 
    -> if s = "A"
        then 1 + count_A rest
        else count_A rest

        
(* test: #use "chap9_6.ml";; *) 
let () = Printf.printf "~~ let rec count_A test ~~ \n";;
let test1 = count_A lst1 = 0;;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;
let test2 = count_A lst2 = 0
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;
let test3 = count_A lst3 = 1
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));; 
let test4 = count_A lst4 = 2
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));; 

let isCountA gakusei = gakusei.seiseki = "A"
