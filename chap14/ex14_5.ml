let () = Printf.printf "Hello\n";;

(* 偶数の数を数える関数 *)
let even lst = 
  let isEven n = n mod 2 == 0 in
  List.filter isEven lst

let () = Printf.printf "\n~~let even test ~~\n";;
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

(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *) 
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 

(* gakusei_t list 型のデータの例 *) 
let lst1 = [] 
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}] 
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 
let lst4 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"}; 
            {namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 


let count_A gakusei_list =
  let isCountA gakusei = gakusei.seiseki = "A" in
  let tmp = List.filter isCountA gakusei_list in
  List.length tmp ;;

let () = Printf.printf "\n~~ let count_A test ~~ \n";;
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

(* 文字の配列を連結する関数 *)
let concat lst = 
  let add_string first rest_result = first ^ rest_result in
  List.fold_right add_string lst "";;

let () = Printf.printf "\n~~ let concat test ~~ \n";;
let test1 = concat [] = ""
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;
let test2 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;


(* 目的：gakusei_t 型のリストから、全員の得点合計を返す関数 *)
(* gakusei_t list -> int *)
let total_points lst = 
  let add_point first rest_result = first.tensuu + rest_result in
  List.fold_right add_point lst 0

let () = Printf.printf "\n~~ let total_points test ~~ \n";;
let test1 = total_points [] = 0
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = total_points [{ 
  namae = "";
  tensuu = 0;
  seiseki = ""; 
}] = 0
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

let test3 = total_points [{ 
  namae = "";
  tensuu = 1;
  seiseki = ""; 
}] = 1
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;

let test4 = total_points [{ 
  namae = "";
  tensuu = 1;
  seiseki = ""; 
};{ 
  namae = "";
  tensuu = 100;
  seiseki = ""; 
}] = 101
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;