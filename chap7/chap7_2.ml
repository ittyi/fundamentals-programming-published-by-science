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
