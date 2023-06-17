(* #use "chap9_3.ml";; *)
match [] with
[] -> 0
| first :: rest -> first ;;

match [] with
[] -> 0
| f :: r -> f ;;