(* ダイクストラのアルゴリズムを踏まえて、今の自分の知識で作る方法。 *)

(* 最短距離が確定した点の集合 *)
type confirmed_t = {
  name  : string;
  value : int;
} ;;

let u =[
  {name = "a"; value=0};
];;  


(* 最短距離がまだ確定していない点の集合 *)


(* メトロネックワーク *)
type metro_network_t = {
  start  : string;
  destination : string;
  value : int;
} ;;

let metro_network =[
  {start = "a"; destination="b"; value=10};
  {start = "a"; destination="d"; value=4};
  {start = "b"; destination="c"; value=2};
  {start = "b"; destination="e"; value=2};
  {start = "c"; destination="e"; value=1};
  {start = "d"; destination="e"; value=3};
];;

(* 開始地点と終了地点を受け取って、一旦文字列を返す *)
let shortest_distance start destination = "";;

let test1 = shortest_distance "" "";;
let () = Printf.printf "test1: %s\n" test1;;
print_endline (string_of_bool (test1 = ""));;

(* さてさて。
ここからどうやっていくか考える。
あーまずvが違うか。
Uは、a->b, a-> c, a->d などの全てのパターンであるべきで、おそらく今のvは入力になるべき。

なので、入力はstart destination metro_network って感じかな。

なのでまず、 metro_network を受け取ったらv（最短距離がまだ確定していない点の集合）を作る関数が必要。
・この関数により、全ての点と点のパターンがわかる。
・この関数時点では、点と点の距離まではまだわからない。


次に、開始地点（start）....


ポイントは、


次に、
*)