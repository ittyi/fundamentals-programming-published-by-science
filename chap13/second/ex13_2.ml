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

let rec person_namae lst = match lst with
| [] -> []
| f :: r -> if f.height = 0
    then []
    else []

let test1 = person_namae list1 = ["string"];;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool test1);;

let test2 = person_namae list2 = ["string"; "int"];;
let () = Printf.printf "test2: ";;
print_endline (string_of_bool test2);;