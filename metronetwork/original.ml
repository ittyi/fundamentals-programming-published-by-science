(* debug Utility 関数: リストを文字列に変換する補助関数 *)
let rec string_of_list lst =
  match lst with
  | [] -> "[]"
  | [x] -> "\"" ^ x ^ "\""
  | x :: xs -> "\"" ^ x ^ "\", " ^ string_of_list xs

(* ダイクストラのアルゴリズムを踏まえて、今の自分の知識で作る方法を考えてみたくなった。 *)

(* 最短距離が確定した点の集合 *)
type shortest_distance_t = {
  name  : string;
  routes: string list;
  value : int;
} ;;

(* debug Utility 関数: shortest_distance_t を文字列化する関数 *)
let string_of_shortest_distance record =
  Printf.sprintf
    "{ name = \"%s\"; routes = %s; value = %d }"
    record.name
    (string_of_list record.routes)
    record.value

(* shortest_distance_t のリストを文字列化する関数 *)
let string_of_shortest_distance_list records =
  let rec aux lst =
    match lst with
    | [] -> "[]"
    | [x] -> string_of_shortest_distance x
    | x :: xs -> (string_of_shortest_distance x) ^ "; " ^ aux xs
  in
  "[" ^ aux records ^ "]"

(* shortest_distance_t をデバッグ用に出力する関数 *)
let print_shortest_distance record =
  print_endline (string_of_shortest_distance record)

(* shortest_distance_t のリストをデバッグ用に出力する関数 *)
let print_shortest_distance_list records =
  print_endline (string_of_shortest_distance_list records)

let u =[
  {name = "a"; routes=[]; value=0};
];; 

(* 最短距離がまだ確定していない点の集合 v *)
(* ["d"; "e"; "c"; "b"; "a"] *)
let v =[
  {name = "d"; routes=[]; value=max_int};
  {name = "e"; routes=[]; value=max_int};
  {name = "c"; routes=[]; value=max_int};
  {name = "b"; routes=[]; value=max_int};
  {name = "a"; routes=[]; value=max_int};
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



(* 開始地点を受け取って、u を初期化する関数 *)
let rec init_u start metro_network = match metro_network with
| [] -> []
| f :: r -> if start = f.start
  then [{name = f.start; routes=[]; value=0}]
  else if start = f.destination 
    then [{name = f.destination; routes=[]; value=0}]
    else init_u start r ;;

let init_u_test1 = init_u "" metro_network;;
let () = Printf.printf "init_u_test1: ";;
print_endline (string_of_bool (init_u_test1 = []));;

let init_u_test2 = init_u "a" metro_network;;
let () = Printf.printf "init_u_test2: ";;
print_endline (string_of_bool (init_u_test2 = u));;

let init_u_test3 = init_u "b" metro_network;;
let () = Printf.printf "init_u_test3: ";;
print_endline (string_of_bool (init_u_test3 = [{name = "b"; routes=[]; value=0}]));;

(* 文字列配列の中に既に入っているかを確認する関数 *)
let rec contain list chech_str = match list with
| [] -> false
| f :: r -> if f = chech_str
    then true
    else contain r chech_str ;;

let contain_test1 = contain [] "";;
let () = Printf.printf "contain_test1: ";;
print_endline (string_of_bool (contain_test1 = false));;

let contain_test2 = contain ["a"] "";;
let () = Printf.printf "contain_test2: ";;
print_endline (string_of_bool (contain_test2 = false));;

let contain_test3 = contain ["a"] "a";;
let () = Printf.printf "contain_test3: ";;
print_endline (string_of_bool (contain_test3 = true));;

let contain_test4 = contain ["b"; "a"] "a";;
let () = Printf.printf "contain_test4: ";;
print_endline (string_of_bool (contain_test4 = true));;

(* 重複を排除する関数 *)
let rec deduplication_list list dest = match list with
| [] -> dest
| f :: r -> if contain dest f
  then deduplication_list r dest
  else deduplication_list r (f :: dest);;

let () =
  let result = deduplication_list ["a"; "b"] [] in
  Printf.printf "deduplication_list result: [%s]\n" (string_of_list result)

let () =
  let result = deduplication_list ["a"; "b"; "c"] ["b"] in
  Printf.printf "deduplication_list result: [%s]\n" (string_of_list result)

let deduplication_list_test1 = deduplication_list [] [];;
let () = Printf.printf "deduplication_list_test1: ";;
print_endline (string_of_bool (deduplication_list_test1 = []));;

let deduplication_list_test2 = deduplication_list [] [];;
let () = Printf.printf "deduplication_list_test2: ";;
print_endline (string_of_bool (deduplication_list_test2 = []));;

(* metro_network の中にある全パターンの文字列を抽出する関数 *)
let rec get_metro_network_pattern metro_network = match metro_network with
| [] -> []
| f :: r -> deduplication_list (f.start :: f.destination :: get_metro_network_pattern r) [];;

let get_metro_network_pattern_test1 = get_metro_network_pattern metro_network;;
let () = Printf.printf "get_metro_network_pattern_test1: ";;
print_endline (string_of_bool ((get_metro_network_pattern_test1 = ["a"; "b"; "a"; "d"; "b"; "c"; "b"; "e"; "c"; "e"; "d"; "e"]) = false));;

let get_metro_network_pattern_test2 = get_metro_network_pattern metro_network;;
let () = Printf.printf "get_metro_network_pattern_test2: ";;
print_endline (string_of_bool (get_metro_network_pattern_test2 = ["d"; "e"; "c"; "b"; "a"]));;

(* 実行と標準出力 *)
let () =
  let result = get_metro_network_pattern metro_network in
  Printf.printf "get_metro_network_pattern result: [%s]\n" (string_of_list result)

(* metro_network の重複なし全パターンを受け取ったら、 shortest_distance_t list の形に初期化する関数 *)
let rec init_v metro_network_pattern = match metro_network_pattern with
| [] -> []
| f :: r -> {name = f; routes=[]; value=max_int} :: init_v r;;

let init_v_test1 = let result = get_metro_network_pattern metro_network in init_v result;;
let () = Printf.printf "init_v_test1: ";;
print_endline (string_of_bool (init_v_test1 = v));;

(* 開始地点を受け取って、最短距離がまだ確定していない点の集合 v を初期化する関数 *)
(* let set_init_v start metro_network = match metro_network with
| [] -> []
| f :: r -> if start = ;;

let set_init_v_test1 = set_init_v "" metro_network;;
let () = Printf.printf "set_init_v_test1: ";;
print_endline (string_of_bool (set_init_v_test1 = v));; *)

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


(* 開始地点と終了地点を受け取って、一旦 u, v を作成するところまでやる関数 *)
let shortest_distance start destination = 
let u = init_u start metro_network in
let v = init_v (get_metro_network_pattern metro_network) in
print_shortest_distance_list u;
print_shortest_distance_list v;
;;

let () =
  print_endline "Single record:";
  print_shortest_distance { name = "a"; routes = ["b"; "c"]; value = 10 };

  print_endline "\nList of records:";
  shortest_distance "a" "b";

(* let test1 = shortest_distance "" "";;
let () = Printf.printf "test1: %s\n" test1;;
print_endline (string_of_bool (test1 = ""));; *)