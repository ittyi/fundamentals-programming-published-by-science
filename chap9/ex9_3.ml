(* test : #use "ex9_3.ml";; *)

["春", "夏", "秋", "冬"] ;;
(* ↑これだと組になってしまう *)

["春"; "夏"; "秋"; "冬"] ;;

(* - : (string * string * string * string) list = [("春", "夏", "秋", "冬")]
- : string list = ["春"; "夏"; "秋"; "冬"]
# (* test : #use "ex9_3.ml";;  *)
