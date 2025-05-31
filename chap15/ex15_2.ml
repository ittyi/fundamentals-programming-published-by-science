let () = Printf.printf "hello\n";;

(* 目的：二つの自然数 m と n の最大公約数を求める関数 gcd をユークリッドの互除法を使って書く *)
(* int -> int -> float *)
let gcd m n =
  if n = 0
    then  0
    else  0

(* テスト *) 
let () = Printf.printf "\n~~ let gcd test ~~ \n"
let test1 = gcd 0 0 = 0
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = gcd 1 0 = 1
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;
