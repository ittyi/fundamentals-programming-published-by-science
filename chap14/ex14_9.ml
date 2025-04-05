let () = Printf.printf "Hello\n";;

type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

(* fun parson -> parson.name;; *)
