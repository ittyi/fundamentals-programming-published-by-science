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
  let (a, b, c, d) = shukei rest in
    if first.seiseki = "A" then (a + 1, b, c, d)
    else if first.seiseki = "B" then (a, b + 1, c, d)
    else if first.seiseki = "C" then (a, b, c + 1, d)
    else if first.seiseki = "D" then (a, b, c, d + 1)
    else (a, b, c, d)

(* test: #use "chap10_4.ml";; *)
let tset1 = shukei [] = (0, 0, 0, 0)

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
] = (1, 1, 0, 0)

let tset3 = shukei [
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
    seiseki = "";
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
] = (2, 1, 0, 1)


(* 以下模範回答 *)
 
(* 学生のデータの例 *) 
let gakusei1 = {namae="nakamura"; tensuu=90; seiseki="A"} 
let gakusei2 = {namae="miyahara"; tensuu=80; seiseki="A"} 
let gakusei3 = {namae="sato"; tensuu=75; seiseki="B"} 
let gakusei4 = {namae="idehara"; tensuu=70; seiseki="B"} 
let gakusei5 = {namae="tsubata"; tensuu=65; seiseki="C"} 
let gakusei6 = {namae="asai"; tensuu=60; seiseki="C"} 
 
(* 学生のリストの例 *) 
let lst1 = [] 
let lst2 = [gakusei2] 
let lst3 = [gakusei3; gakusei4] 
let lst4 = [gakusei4; gakusei5; gakusei1] 
let lst5 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3] 
 
(* 
(* 目的：学生リスト lst のうち各成績の人数を集計する *) 
(* shukei : gakusei_t list -> int * int * int * int *) 
let rec shukei lst = match lst with 
    [] -> (0, 0, 0, 0) 
  | {namae = n; tensuu = t; seiseki = s} :: rest -> 
      let shukei_rest = shukei rest in 
      match shukei_rest with 
        (a, b, c, d) -> if s = "A" then (a + 1, b, c, d) 
                        else if s = "B" then (a, b + 1, c, d) 
                        else if s = "C" then (a, b, c + 1, d) 
                        else (a, b, c, d + 1) 
*) 
 
(* 目的：学生リスト lst のうち各成績の人数を集計する *) 
(* shukei : gakusei_t list -> int * int * int * int *) 
let rec example_shukei lst = match lst with 
    [] -> (0, 0, 0, 0) 
  | {namae = n; tensuu = t; seiseki = s} :: rest -> 
      let (a, b, c, d) = example_shukei rest in 
      if s = "A" then (a + 1, b, c, d) 
      else if s = "B" then (a, b + 1, c, d) 
      else if s = "C" then (a, b, c + 1, d) 
      else (a, b, c, d + 1) 
 
(* テスト *) 
let test1 = example_shukei lst1 = (0, 0, 0, 0) 
let test2 = example_shukei lst2 = (1, 0, 0, 0) 
let test3 = example_shukei lst3 = (0, 2, 0, 0) 
let test4 = example_shukei lst4 = (1, 1, 1, 0) 
let test5 = example_shukei lst5 = (2, 2, 2, 0) 
let test6 = shukei lst1 = (0, 0, 0, 0) 
let test7 = shukei lst2 = (1, 0, 0, 0) 
let test8 = shukei lst3 = (0, 2, 0, 0) 
let test9 = shukei lst4 = (1, 1, 1, 0) 
let test10 = shukei lst5 = (2, 2, 2, 0) 