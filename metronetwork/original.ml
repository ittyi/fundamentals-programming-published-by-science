(* ダイクストラのアルゴリズムを踏まえて、今の自分の知識で作る方法を考えてみたくなった。 *)

(* 最短距離が確定した点の集合 *)
type shortest_distance_t = {
  name  : string;
  routes: string list;
  value : int;
} ;;

let u =[
  {name = "a"; routes=[]; value=0};
];;  

(* 最短距離がまだ確定していない点の集合 v *)
let v =[
  {name = "a"; routes=[]; value=0};
];;

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

(* 開始地点を受け取って、u を初期化する関数 *)
let rec set_init_u start metro_network = match metro_network with
| [] -> []
| f :: r -> if start = f.start
  then [{name = f.start; routes=[]; value=0}]
  else if start = f.destination 
    then [{name = f.destination; routes=[]; value=0}]
    else set_init_u start r ;;

let set_init_u_test1 = set_init_u "" metro_network;;
let () = Printf.printf "set_init_u_test1: ";;
print_endline (string_of_bool (set_init_u_test1 = []));;

let set_init_u_test2 = set_init_u "a" metro_network;;
let () = Printf.printf "set_init_u_test2: ";;
print_endline (string_of_bool (set_init_u_test2 = u));;

let set_init_u_test3 = set_init_u "b" metro_network;;
let () = Printf.printf "set_init_u_test3: ";;
print_endline (string_of_bool (set_init_u_test3 = [{name = "b"; routes=[]; value=0}]));;


(* 開始地点を受け取って、最短距離がまだ確定していない点の集合 v を初期化する関数 *)
let set_init_v start metro_network = v;;

let set_init_v_test1 = set_init_v "" metro_network;;
let () = Printf.printf "set_init_v_test1: ";;
print_endline (string_of_bool (set_init_v_test1 = v));;

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