(* test: #use "chap13_5.ml";; *)
(* let twice f =
  let g = f (f x)
  in g *)
(* 
上記の状態だとこうなる
# #use "chap13_5.ml";;
val twice : ('a -> 'a) -> 'a -> 'a = <fun>
# #use "chap13_5.ml";;
File "chap13_5.ml", line 3, characters 15-16:
3 |   let g = f (f x)
                   ^
Error: Unbound value x

x が何にもバウンド = 紐づいていない と怒られるのね。
*)

let twice f =
  let g x = f (f x)
  in g
(* val twice : ('a -> 'a) -> 'a -> 'a = <fun> *)

let add3 x = x + 3

let test1 = twice add3 7
(* val test1 : int = 13 *)
let test2 = twice add3 8 = 14
let test3 = twice add3 9 = 15
