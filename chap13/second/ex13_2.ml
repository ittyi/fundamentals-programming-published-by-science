(* debug Utility 関数: リストを文字列に変換する補助関数 *)
let rec string_of_list lst =
  match lst with
  | [] -> "[]"
  | [x] -> "\"" ^ x ^ "\""
  | x :: xs -> "\"" ^ x ^ "\", " ^ string_of_list xs
  
type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

let test = {
  name = "string";
  height = 170;
  body_weight = 56;
  birthday = "11/15";
  blood_type = "o";
}

let test2 = {
  name = "string";
  height = 170;
  body_weight = 56;
  birthday = "11/15";
  blood_type = "o";
}

let test3 = {
  name = "int";
  height = 170;
  body_weight = 56;
  birthday = "11/15";
  blood_type = "o";
}

let list1 = [test; test2]

let list2 = [test; test2; test3]

(* 文字列配列の中に既に入っているかを確認する関数 *)
let rec contain list chech_str = match list with
| [] -> false
| f :: r -> if f = chech_str
    then true
    else contain r chech_str ;;

let contain_test1 = contain [] "";;
let () = Printf.printf "contain_test1: ";;
print_endline (string_of_bool (contain_test1 = false));;

let contain_test2 = contain ["a"] "";;
let () = Printf.printf "contain_test2: ";;
print_endline (string_of_bool (contain_test2 = false));;

let contain_test3 = contain ["a"] "a";;
let () = Printf.printf "contain_test3: ";;
print_endline (string_of_bool (contain_test3 = true));;

let contain_test4 = contain ["b"; "a"] "a";;
let () = Printf.printf "contain_test4: ";;
print_endline (string_of_bool (contain_test4 = true));;

let rec person_namae lst dest = match lst with
| [] -> dest
| f :: r -> if contain dest f.name
    then person_namae r dest
    else person_namae r (f.name :: dest)

let () = Printf.printf "〜〜〜\n";;
let test1 = (person_namae list1 []) = ["string"];;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool test1);;

let test2 = person_namae list2 [] = ["int"; "string"];;
let () = Printf.printf "test2: ";;
print_endline (string_of_bool test2);;


(* 目的：person_t 型のデータから名前を返す *) 
(* take_name : person_t -> string *) 
let take_name person = match person with 
  {name = n; height = h; body_weight = bw; birthday = bi; blood_type = bt} -> n 

(* 目的：lst に含まれる人の名前のリストを返す *) 
(* person_name : person_t list -> string list *) 
let person_name lst = List.map take_name lst 

let () = Printf.printf "〜〜〜\n";;
let test1 = (person_name list1) = ["string"];;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool test1);;

let test2 = person_name list2 = ["int"; "string"];;
let () = Printf.printf "test2: ";;
print_endline (string_of_bool test2);;

(* あ、、重複は排除しなくていいのか。。とほほ。。。 *)
