(* #use "chap9_3.ml";; *)
match [] with
[] -> 0
| first :: rest -> first ;;

match [] with
[] -> 0
| f :: r -> f ;;

match [1; 2; 3] with
[] -> 0
| first :: rest -> first ;;

(* match [1; 2; 3] with
[] -> 0
| first :: rest -> rest ;;
File "chap9_3.ml", line 16, characters 19-23:
16 | | first :: rest -> rest ;;
                        ^^^^
Error: This expression has type int list
       but an expression was expected of type int *)

match [1; 2; 3] with
[] -> 0
| first :: second :: rest -> second ;;
File "chap9_3.ml", lines 23-25, characters 0-35:
(* お、警告は出るけど2は取得できた。
23 | match [1; 2; 3] with
24 | [] -> 0
25 | | first :: second :: rest -> second...
Warning 8 [partial-match]: this pattern-matching is not exhaustive.
Here is an example of a case that is not matched:
_::[]
- : int = 2 *)
