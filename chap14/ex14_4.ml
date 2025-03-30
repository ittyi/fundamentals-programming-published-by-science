let () = Printf.printf "Hello\n";;

(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *) 
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 

(* 
init -> 0
*)
let add_point first rest_result = first.tensuu + rest_result

(* 目的：gakusei_t 型のリストから、全員の得点合計を返す関数 *)
(* gakusei_t list -> int *)
let total_points lst = 0

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