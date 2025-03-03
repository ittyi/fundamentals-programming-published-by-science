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
| [] -> []
| f :: r -> if f.height = 0
    then []
    else []

let test1 = person_namae list1 [] = ["string"];;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool test1);;

let test2 = person_namae list2 [] = ["string"; "int"];;
let () = Printf.printf "test2: ";;
print_endline (string_of_bool test2);;