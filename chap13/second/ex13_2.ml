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

let list = [test; test2]

let rec person_namae lst = match lst with
| [] -> 0
| f :: r -> if f.height = 0
    then 0
    else 0

let test1 = person_namae list = 0;;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool test1);;

let test2 = person_namae list = 2;;
let () = Printf.printf "test2: ";;
print_endline (string_of_bool test2);;