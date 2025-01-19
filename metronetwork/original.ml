(* debug Utility 関数: リストを文字列に変換する補助関数 *)
let rec string_of_list lst =
  match lst with
  | [] -> "[]"
  | [x] -> "\"" ^ x ^ "\""
  | x :: xs -> "\"" ^ x ^ "\", " ^ string_of_list xs

(* ダイクストラのアルゴリズムを踏まえて、今の自分の知識で作る方法を考えてみたくなった。 *)

(* 最短距離を記録する点の集合 *)
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

(* debug Utility 関数: shortest_distance_t のリストを文字列化する関数 *)
let string_of_shortest_distance_list records =
  let rec aux lst =
    match lst with
    | [] -> "[]"
    | [x] -> string_of_shortest_distance x
    | x :: xs -> (string_of_shortest_distance x) ^ "; " ^ aux xs
  in
  "[" ^ aux records ^ "]"

(* debug Utility 関数: shortest_distance_t をデバッグ用に出力する関数 *)
let print_shortest_distance record =
  print_endline (string_of_shortest_distance record)

(* debug Utility 関数: shortest_distance_t のリストをデバッグ用に出力する関数 *)
let print_shortest_distance_list records =
  print_endline (string_of_shortest_distance_list records)

let u =[
  {name = "a"; routes=["a"]; value=0};
];; 

(* 最短距離がまだ確定していない点の集合 v *)
(* ["d"; "e"; "c"; "b"; "a"] *)
let v =[
  {name = "d"; routes=["d"]; value=max_int};
  {name = "e"; routes=["e"]; value=max_int};
  {name = "c"; routes=["c"]; value=max_int};
  {name = "b"; routes=["b"]; value=max_int};
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
  then [{name = f.start; routes=f.start :: []; value=0}]
  else if start = f.destination 
    then [{name = f.destination; routes=f.destination :: []; value=0}]
    else init_u start r ;;

let init_u_test1 = init_u "" metro_network;;
let () = Printf.printf "init_u_test1: ";;
print_endline (string_of_bool (init_u_test1 = []));;

let init_u_test2 = init_u "a" metro_network;;
let () = Printf.printf "init_u_test2: ";;
print_endline (string_of_bool (init_u_test2 = u));;

let init_u_test3 = init_u "b" metro_network;;
let () = Printf.printf "init_u_test3: ";;
print_endline (string_of_bool (init_u_test3 = [{name = "b"; routes=["b"]; value=0}]));;



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

let () =
  let result = get_metro_network_pattern metro_network in
  Printf.printf "get_metro_network_pattern result: [%s]\n" (string_of_list result)

(* 開始地点を受け取って、最短距離がまだ確定していない点の集合 v を初期化する関数 *)
(* metro_network の重複なし全パターンを受け取ったら、 shortest_distance_t list の形に初期化する *)
let rec init_v start metro_network_pattern = match metro_network_pattern with
| [] -> []
| f :: r -> if f = start
  then init_v start r
  else {name = f; routes=[f]; value=max_int} :: init_v start r;;

let init_v_test1 = let result = get_metro_network_pattern metro_network in init_v "a" result;;
let () = Printf.printf "init_v_test1: ";;
print_endline (string_of_bool (init_v_test1 = v) );;



(* 開始地点と終了地点を受け取って、一旦 u, v を作成するところまでやる関数 *)
let checkpoint_shortest_distance start destination = 
let u = init_u start metro_network in
let v = init_v start (get_metro_network_pattern metro_network) in
print_shortest_distance_list u;
print_shortest_distance_list v;
;;

let () =
  print_endline "\nList of records:";
  checkpoint_shortest_distance "a" "b";;

(* u, v はできたので次 *)
(* 
上記までで、書籍でいうところのステップ1, ステップ2、まで完了。
ではステップ3 v が空集合になったら、全ての点の最短距離が確定したため、その時点で u の中でstart destinationを含むものを抽出し、最短経路と最短距離を出力する を作成する！！
*)

(* v が空集合になったら、全ての点の最短距離が確定したため、最短経路と最短距離を出力する *)
(* routes の順番で、必ず狙った順番（配列の先頭にnameと同じものが入る）で揃っていないとうまく動かない。 *)
let rec result_shortest_distance start destination u = match u with
| [] -> "最短距離を求めることができませんでした。"
| f :: r -> match f.routes with
  | [] -> result_shortest_distance start destination r
  | routes_f :: routes_r -> if routes_f = destination
      then "最短経路は" ^ string_of_list f.routes ^ "で、最短距離は" ^ string_of_int f.value ^ "です。"
      else result_shortest_distance start destination r;;

(* 最終的に u にできて欲しいデータ *)
let test_u =[
  {name = "a"; routes=["a"]; value=0};
  {name = "d"; routes=["d"; "a"]; value=4};
  {name = "e"; routes=["e"; "d"; "a"]; value=7};
  {name = "c"; routes=["c"; "e"; "d"; "a"]; value=8};
  {name = "b"; routes=["b"; "e"; "d"; "a"]; value=9};
];;

let result_shortest_distance_test1 = result_shortest_distance "a" "b" test_u
let () = 
  Printf.printf "result: %s\n" result_shortest_distance_test1;;
  Printf.printf "result_shortest_distance_test1: " ;;
print_endline (string_of_bool (result_shortest_distance_test1 = "最短経路は\"b\", \"e\", \"d\", \"a\"で、最短距離は9です。"));;

(* 次。
直前につながっている点をどうやって取得しようか。。
u, v を渡したら、上記の test_v を出力する関数ができれば勝ち。
そのために、直前につながっている点取得する必要がある。

あー再帰で受け取れば良いのか。
let dijkstra u v station_decided_just_before で定義完了。
新しく最短経路が求め終わるたびにその点を station_decidedjust_before に入れて呼び出す。

書籍にあるstep 4: 直前に確定した点につながっている点について、その最短距離を更新する。
具体的には、「その点が既に持っている最短距離」と「直前に確定した点経由でその先にいった場合の最短距離」を比べ、短い方をその点への最短距離とする。

【step 4以降で必要なこと】
１.metro_network から、直前に確定した点につながっている点を取得する。
  →なので、まずは a が決定し、metro_network を走査して隣接する点が b と d であることを取得する関数を作る。
  →この時、start と destinationの順番は気にしないようにする。
2. 点 b と d はまだどちらも最短距離を持っていないため、b を [b; 直前に確定した点]にして、d を[d; 直前に確定した点] にする
3. vを 2 でやった値に更新する
4. v を全て走査し、最短距離が最短の点 p (今回は d)を u に移す
5. 更新したu, v と直前に確定した点を d を使い、もう一度 dijkstra を呼び出す
*)

(* station_decided_just_before 単体を受け取り、metro_network の中から隣接する点を取得する関数*)
let rec helper_get_previous_connected_point station_decided_just_before metro_network = match metro_network with
| [] -> []
| f :: r -> if f.start = station_decided_just_before
    then f.destination :: (helper_get_previous_connected_point station_decided_just_before r)
    else if f.destination = station_decided_just_before
      then f.start :: (helper_get_previous_connected_point station_decided_just_before r)
      else helper_get_previous_connected_point station_decided_just_before r;;

let helper_get_previous_connected_point_test1 = helper_get_previous_connected_point "a" metro_network
let () = 
  Printf.printf "\n点を文字列で受け取り、metro_network の中から隣接する点を取得する関数\n";;
  print_endline (string_of_list helper_get_previous_connected_point_test1);
  Printf.printf "helper_get_previous_connected_point_test1: ";;
  print_endline (string_of_bool (helper_get_previous_connected_point_test1 = ["b"; "d"]) );;

let helper_get_previous_connected_point_test2 = helper_get_previous_connected_point "b" metro_network
let () = 
  print_endline (string_of_list helper_get_previous_connected_point_test2);
  Printf.printf "helper_get_previous_connected_point_test2: ";;
  print_endline (string_of_bool (helper_get_previous_connected_point_test2 = ["a"; "c"; "e"]) );;


let rec helper_get_v_adjacent_points v adjacent_points = match v with
| [] -> []
| f :: r -> if contain adjacent_points f.name
  then f :: helper_get_v_adjacent_points r adjacent_points
  else helper_get_v_adjacent_points r adjacent_points;;

let helper_get_v_adjacent_points_test2 = helper_get_v_adjacent_points v ["b"; "d"]
let () = 
  print_endline (string_of_shortest_distance_list helper_get_v_adjacent_points_test2);
  Printf.printf "helper_get_v_adjacent_points_test2: ";;
  print_endline (string_of_bool (helper_get_v_adjacent_points_test2 = [
    { name = "d"; routes = ["d"]; value = 4611686018427387903 };
    { name = "b"; routes = ["b"]; value = 4611686018427387903 };
  ]) );;

(* v の中で直前につながっている点を list 取得する関数*)
let get_previous_connected_point v station_decided_just_before = 
  let adjacent_points = helper_get_previous_connected_point station_decided_just_before metro_network in 
  helper_get_v_adjacent_points v adjacent_points

let get_previous_connected_point_test1 = get_previous_connected_point v "a"
let () = 
  Printf.printf "\n";;
  print_endline (string_of_shortest_distance_list get_previous_connected_point_test1);;
  Printf.printf "get_previous_connected_point_test1: ";;
  print_endline (string_of_bool (get_previous_connected_point_test1 = [
    {name = "d"; routes=["d"]; value=max_int};
    {name = "b"; routes=["b"]; value=max_int};
  ]) );;

let get_previous_connected_point_test2 = get_previous_connected_point v "b"
let () = 
  print_endline (string_of_shortest_distance_list get_previous_connected_point_test2);;
  Printf.printf "get_previous_connected_point_test2: ";;
  print_endline (string_of_bool (get_previous_connected_point_test2 = [
    {name = "e"; routes=["e"]; value=max_int};
    {name = "c"; routes=["c"]; value=max_int};
  ]) );;

let rec append previous_connected_point_routes station_decided_just_before = match previous_connected_point_routes with
| [] -> station_decided_just_before.name :: []
| f :: r -> f :: (append r station_decided_just_before);;

let rec get_distance_between_two_points station_decided_just_before_name previous_connected_point_name metro_network = match metro_network with
| [] -> max_int
| f :: r -> if f.start = station_decided_just_before_name && f.destination = previous_connected_point_name
  then f.value
  else get_distance_between_two_points station_decided_just_before_name previous_connected_point_name r

(* 直前に確定した点とつながっている点をそれぞれの今時点での最短距離を求める*)
let rec helper_calc_shortest_distance station_decided_just_before previous_connected_point metro_network = match metro_network with
| [] -> previous_connected_point
| f :: r -> if f.start = station_decided_just_before.name && f.destination = previous_connected_point.name
    then let value = get_distance_between_two_points station_decided_just_before.name previous_connected_point.name metro_network in {
      name = previous_connected_point.name;
      routes=(append previous_connected_point.routes station_decided_just_before);
      value=if f.value > value
        then value
        else f.value;
    }
    else helper_calc_shortest_distance station_decided_just_before previous_connected_point r;;

let helper_calc_shortest_distance_test1 = helper_calc_shortest_distance {name = "a"; routes=["a"]; value=0} {name = "d"; routes=["d"]; value=max_int} metro_network;;
let () = 
  print_endline (string_of_shortest_distance helper_calc_shortest_distance_test1);;
  Printf.printf "helper_calc_shortest_distance_test1: ";;
  print_endline (string_of_bool (helper_calc_shortest_distance_test1 = {name = "d"; routes=["d"; "a"]; value=4}) );;

let helper_calc_shortest_distance_test2 = helper_calc_shortest_distance {name = "a"; routes=["a"]; value=0} {name = "b"; routes=["b"]; value=max_int} metro_network;;
let () = 
  print_endline (string_of_shortest_distance helper_calc_shortest_distance_test2);;
  Printf.printf "helper_calc_shortest_distance_test2: ";;
  print_endline (string_of_bool (helper_calc_shortest_distance_test2 = {name = "b"; routes=["b"; "a"]; value=10}) );;

let helper_calc_shortest_distance_test3 = helper_calc_shortest_distance {name = "a"; routes=["a"]; value=0} {name = "b"; routes=["b"]; value=11} metro_network;;
let () = 
  print_endline (string_of_shortest_distance helper_calc_shortest_distance_test3);;
  Printf.printf "helper_calc_shortest_distance_test3: ";;
  print_endline (string_of_bool (helper_calc_shortest_distance_test3 = {name = "b"; routes=["b"; "a"]; value=10}) );;

(*直前に確定した点とつながっている点のリストを走査し、それぞれの今時点での最短距離を求める*)
let rec calc_shortest_distance station_decided_just_before previous_connected_points = match previous_connected_points with
| [] -> []
| f :: r -> let t = (helper_calc_shortest_distance station_decided_just_before f metro_network) in
    t :: (calc_shortest_distance station_decided_just_before r);;

let calc_shortest_distance_test1 = calc_shortest_distance {name = "a"; routes=[]; value=0} [
  {name = "d"; routes=["d"]; value=max_int};
  {name = "b"; routes=["b"]; value=max_int};
];;
let () = 
  Printf.printf "\nかなり重要な、新しく v から uに持っていくために隣接した点の最短距離を計算する関数\n";;
  print_endline (string_of_shortest_distance_list calc_shortest_distance_test1);;
  Printf.printf "calc_shortest_distance_test1: ";;
  print_endline (string_of_bool (calc_shortest_distance_test1 = [
    {name = "d"; routes=["d"; "a"]; value=4};
    {name = "b"; routes=["b"; "a"]; value=10};
  ]) );;

let calc_shortest_distance_test2 = calc_shortest_distance {name = "a"; routes=["a"]; value=0} [];;
let () = 
  print_endline (string_of_shortest_distance_list calc_shortest_distance_test2);;
  Printf.printf "calc_shortest_distance_test2: ";;
  print_endline (string_of_bool (calc_shortest_distance_test2 = []) );;

(* v から一個の値と計算したリストを受け取り、一致するものを引っ張る関数 *)
let rec contain_calc_shortest_distances calc_shortest_distances shortest_distance = match calc_shortest_distances with
| [] -> shortest_distance
| f :: r -> if f.name = shortest_distance.name
    then f
    else contain_calc_shortest_distances r shortest_distance;;

let contain_calc_shortest_distances_test1 = contain_calc_shortest_distances [
  {name = "d"; routes=["d"; "a"]; value=4};
  {name = "b"; routes=["b"]; value=max_int};
] {name = "d"; routes=["d"]; value=max_int};;
let () = 
  Printf.printf "\n v から一個の値と計算したリストを受け取り、一致するものを引っ張る関数\n";;
  print_endline (string_of_shortest_distance contain_calc_shortest_distances_test1);;
  Printf.printf "contain_calc_shortest_distances_test1: ";;
  print_endline (string_of_bool (contain_calc_shortest_distances_test1 ={name = "d"; routes=["d"; "a"]; value=4}) );;

(* calc_shortest_distance で求めた点のlistをvにマージする関数 *)
let rec merge_v_list v calc_shortest_distances = match v with
| [] -> []
| f :: r -> (contain_calc_shortest_distances calc_shortest_distances f) :: (merge_v_list r calc_shortest_distances);;

let merge_v_list_test1 = merge_v_list [
  {name = "d"; routes=["d"]; value=max_int};
  {name = "e"; routes=["e"]; value=max_int};
  {name = "c"; routes=["c"]; value=max_int};
  {name = "b"; routes=["b"]; value=max_int};
] [
  {name = "d"; routes=["d"; "a"]; value=4};
  {name = "b"; routes=["b"; "a"]; value=10};
];;
let () = 
  Printf.printf "\n calc_shortest_distance で求めた点のlistをvにマージする関数\n";;
  print_endline (string_of_shortest_distance_list merge_v_list_test1);;
  Printf.printf "merge_v_list_test1: ";;
  print_endline (string_of_bool (merge_v_list_test1 =[
    {name = "d"; routes=["d"; "a"]; value=4};
    {name = "e"; routes=["e"]; value=max_int};
    {name = "c"; routes=["c"]; value=max_int};
    {name = "b"; routes=["b"; "a"]; value=10};
  ]) );;

(* 直前につながっている点を一つ一つ最短経路と最短距離を求め、v から u に移動していく関数 *)
let dijkstra u v station_decided_just_before = match v with
| [] -> u
| f :: r -> [
  {name = "a"; routes=[]; value=0};
  {name = "d"; routes=["d"; "a"]; value=4};
  {name = "e"; routes=["e"; "d"; "a"]; value=7};
  {name = "c"; routes=["c"; "e"; "d"; "a"]; value=8};
  {name = "b"; routes=["b"; "e"; "d"; "a"]; value=9};
];;

(* 下のデバッグ用に配列の数を数える関数を定義 *)
let rec sum_list list count = match list with
| [] -> count
| f :: r -> sum_list r (count + 1)

let dijkstra_test1 = dijkstra u v "a";;
let () =
  Printf.printf "\ndijkstraのメイン。 v から u に移動していく処理:\n";
  print_shortest_distance_list dijkstra_test1;
  Printf.printf "dijkstra_test1 配列の数:";
  print_endline (string_of_int (sum_list dijkstra_test1 0) );;
  Printf.printf "dijkstra_test1: ";
  print_endline (string_of_bool (dijkstra_test1 = test_u) );;


let dijkstra_test2 = dijkstra u [] "a";;
let () =
  print_shortest_distance_list dijkstra_test2;
  Printf.printf "dijkstra_test2 配列の数:";
  print_endline (string_of_int (sum_list dijkstra_test2 0) );;
  Printf.printf "dijkstra_test2: ";
  print_endline (string_of_bool (dijkstra_test2 = [
    {name = "a"; routes=[]; value=0};
  ]) );;
