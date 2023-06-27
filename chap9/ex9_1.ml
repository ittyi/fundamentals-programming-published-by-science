(* test : #use "ex9_1.ml";; *)
"春" :: "夏" :: "秋" :: "冬" :: []

(* 間違えるとこんなエラーが出る
File "ex9_1.ml", line 2, characters 27-32:
2 | "春" :: "夏" :: "秋" :: "冬" []
                               ^^^^^
Error: This expression has type string
       This is not a function; it cannot be applied. *)

(* # #use "ex9_1.ml";;
- : string list = ["春"; "夏"; "秋"; "冬"] *)
