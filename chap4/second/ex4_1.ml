(* val baito_kyuyo : 'a -> 'a = <fun> *)
let baito_kyuyo year time_h = 1 ;;

(* test: ocaml chap4/second/ex4_1.ml *)
let test1 = baito_kyuyo 1 1 = 1;;
print_endline (string_of_bool test1);;
