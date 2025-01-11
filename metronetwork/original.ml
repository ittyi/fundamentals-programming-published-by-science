(* ダイクストラのアルゴリズムを踏まえて、今の自分の知識で作る方法。 *)

(* 最短距離が確定した点の集合 *)
type confirmed_t = {
  name  : string;
  value : int;
} ;;

let u =[
  {name = "a"; value=0};
];;  


(* 最短距離がまだ確定していない点の集合 v *)


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


最短距離がまだ確定していない点の集合 v が持つべきデータは、
入力として受け取った start から destination までの全部のパターンなのでは？


仮置きで、A -> Cまでの最短経路を求めることにする。
A -> B -> C だと12なのに対して、 A -> D -> E -> C の方が8なので短い。

Step 1.
Uに点A
Vに他の点が入る。

この時、Uを作成するロジックとVを作成するロジックがまず必要。
まだOCamlでの連結リストの作り方がわからないので、とりあえずレコードのリストにする。

それぞれに必要なデータを整理する。
【U】
・ start から全ての点までの最短経路をもてれば良い。
・つまり、start が A ならA以外の点と、一旦未定の状態で空配列（通る道のリスト）と最短距離（通る道を全て足した数字）が必要

【V】
・最初は start の点までの最短経路をもてれば良い。
・つまり、start が A なら A と確定の状態で空配列と最短距離＝0が必要

Step 2.

Step 3.

Step 4.

Step 5.


次に、
*)