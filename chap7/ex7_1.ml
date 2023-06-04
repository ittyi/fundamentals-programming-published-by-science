(* 合計を求める *)
let helper_goukei_to_heikin sum = (sum, sum / 5)

(* 目的: 国数理社英の点数を与えたら、その合計点と平均点を組にして返す *)
(* goukei_to_heikin: int -> int -> int -> int -> int -> (int * int) *)
let goukei_to_heikin national_language math science society english =
  helper_goukei_to_heikin (national_language + math + science + society + english)

(* test: #use "ex7_1.ml";; *)
let test1 = goukei_to_heikin 10 10 10 10 10 = (50, 10)
let test1 = goukei_to_heikin 10 10 90 10 10 = (130, 26)
let test1 = goukei_to_heikin 0 0 0 0 0 = (0, 0)
