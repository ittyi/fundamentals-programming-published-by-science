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

