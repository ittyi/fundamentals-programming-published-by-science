(* 目的: 実数のリストを受け取り、各要素の平方根のリストを返す *)
(* map_sqrt : float list -> float list *)
let rec map_sqrt lst = match lst with
| [] -> []
| first :: rest -> sqrt first :: map_sqrt rest

let test1 = map_sqrt [2.0; 3.0]
(* val test1 : float list = [1.41421356237309515; 1.73205080756887719] *)


(* 学生1人分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae: string;    (*名前*)
  tensuu: int;      (*点数*)
  seiseki: string;  (*成績*)
}

(* 目的: 学生のデータ gakusei を受け取り成績のついたデータを返す *)
(* hyouka : gakusei_t -> gakusei_t *)
let hyouka gakusei = match gakusei with
| {namae = n; tensuu = t; seiseki = s} -> 
  if t >= 80 then {namae = n; tensuu = t; seiseki = "A"}
  else if t >= 70 then {namae = n; tensuu = t; seiseki = "B"}
  else if t >= 60 then {namae = n; tensuu = t; seiseki = "C"}
  else                 {namae = n; tensuu = t; seiseki = "D"}

(* 目的: gakusei_t 型のリストを受け取り、成績を入れたリストを返す *)
(* map_hyoka : gakusei_t list -> gakusei_t list *)
let rec map_hyoka lst = match lst with
| [] -> []
| first :: rest -> hyouka first :: map_hyoka rest

let testdata1 = {namae = "asai"; tensuu = 90; seiseki = ""}
let testdata2 = {namae = "asai"; tensuu = 80; seiseki = ""}
let test2 = map_hyoka [testdata1; testdata2]
  = [{namae = "asai"; tensuu = 90; seiseki = "A"};
  {namae = "asai"; tensuu = 80; seiseki = "A"}]


(* 目的: 関数 f とリスト lst を受け取り f を施したリストを返す *)
(* map : (a' -> b') -> 'a list -> 'b list *)
let rec map f lst = match lst with
| [] -> []
| first :: rest -> f first :: map f rest

(* test: #use "chap13_2.ml";; *)
let test3 = map sqrt [2.0; 3.0] = [1.41421356237309515; 1.73205080756887719]
let test4 = map sin [2.0; 3.0] = [0.909297426825681709; 0.141120008059867214]
