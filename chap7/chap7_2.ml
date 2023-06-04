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