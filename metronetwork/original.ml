(* ダイクストラのアルゴリズムを踏まえて、今の自分の知識で作る方法。 *)

(* 最短距離が確定した点の集合 *)
type confirmed_t = {
  name  : string;
  value : int;
} ;;

let v =[
  {name = "a"; value=0};
];;  


(* 最短距離がまだ確定していない点の集合 *)
type unconfirmed_t = {
  start  : string;
  destination : string;
  value : int;
} ;;

let u =[
  {start = "a"; destination="b"; value=10};
  {start = "a"; destination="d"; value=4};
  {start = "b"; destination="c"; value=2};
  {start = "b"; destination="e"; value=2};
  {start = "c"; destination="e"; value=1};
  {start = "d"; destination="e"; value=3};
];;
