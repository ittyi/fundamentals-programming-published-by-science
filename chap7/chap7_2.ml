match (3, 5) with
(a, b) -> a + b ;;
(* 結果
- : int = 8   
*)

match (3, 5) with
(a, b) -> a - b ;;
(* 結果
- : int = -2  
*)

match (3, 5) with
(a, b) -> a + a + b ;;
(* 結果
  - : int = 11
*)

match (3, 5) with
(a, b, b) -> a + a + b ;;
(* 結果
Error: This pattern matches values of type 'a * 'b * 'c
       but a pattern was expected which matches values of type int * int

訳: 
エラー: このパターンは、タイプ 'a * 'b * 'c の値と一致します
       しかし、型 int * int の値に一致するパターンが予期されていました
*)

(* 目的: 別の場所で作られた組を取ってきて、その要素を取り出して加える関数 *)
(* add: (int, int) -> int *)
let add pair = match pair with
  (a, b) -> a + b ;;

(* 結果
# add (1,2);;
- : int = 3
*)

(* 以下のようにも書ける *)
let add_z (a, b) = a + b ;;
(* 結果
# add_z (1, 2);;
- : int = 3   
*)