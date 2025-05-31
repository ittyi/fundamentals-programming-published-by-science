let () = Printf.printf "hello\n";;

(* 目的：二つの自然数 m と n の最大公約数を求める関数 gcd をユークリッドの互除法を使って書く *)
(* int -> int -> float *)
let rec gcd m n =
  if n = 0
    then  m
    else let remainder = m mod n in
      if remainder = 0 
        then n
        else gcd n remainder


(* テスト *) 
let () = Printf.printf "\n~~ let gcd test ~~ \n"
let test1 = gcd 0 0 = 0
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = gcd 1 0 = 1
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

let test3 = gcd 2 1 = 1
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;

let test4 = gcd 8177 3315 = 221
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;

let test5 = gcd 390 273 = 39
let () = Printf.printf "test5: ";;
print_endline (string_of_bool (test5 = true));;
