(* 学生1人分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae: string;    (*名前*)
  tensuu: int;      (*点数*)
  seiseki: string;  (*成績*)
}

(* gakusei_t list は 
     - []              空リスト
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は gakusei_t 型、 
                         rest が自己参照のケース） 
*) 

let test_data = {
  namae = "name1";
  tensuu = 1;
  seiseki = "A";
  }

let test_exc = (0, 0, 0, 0) 

(* 目的: 学生リスト lst のうち各成績の人数を集計する *)
(* shukei : gakusei_t list -> int * int * int * int *)
let rec shukei lst = match lst with
| [] -> (0, 0, 0, 0)
| first :: rest -> 
  match shukei rest with
  | (a, b, c, d) -> 
    if first.seiseki = "A" then let a = a + 1 in (a, b, c, d)
    else if first.seiseki = "B" then let b = b + 1 in (a, b, c, d)
    else if first.seiseki = "C" then let c = c + 1 in (a, b, c, d)
    else if first.seiseki = "D" then let d = d + 1 in (a, b, c, d)
    else (a, b, c, d)
  (* (first.tensuu, first.tensuu, first.tensuu, first.tensuu) *)

(* test: #use "chap10_4.ml";; *)
let tset1 = shukei [
  {
  namae = "name1";
  tensuu = 1;
  seiseki = "A";
  };
  {
    namae = "name2";
    tensuu = 1;
    seiseki = "B";
  };
] = (1, 1, 0, 0)

let tset2 = shukei [
  {
  namae = "name1";
  tensuu = 1;
  seiseki = "A";
  };
  {
    namae = "name2";
    tensuu = 1;
    seiseki = "B";
  };
  {
    namae = "name3";
    tensuu = 1;
    seiseki = "C";
  };
  {
    namae = "name4";
    tensuu = 1;
    seiseki = "D";
  };
  {
    namae = "name5";
    tensuu = 1;
    seiseki = "A";
  };
] = (2, 1, 1, 1)
