(* 目的: 学生リスト lst のうち成績が A の人の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst = match lst with
| [] -> []
| {namae = n; tensuu = t; seiseki = s} :: rest ->
    if s = "A" then 1 + count_A rest
               else count_A rest

(* テストデータ *)
let lst1 = []
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}]

(* テスト *)
let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 1
