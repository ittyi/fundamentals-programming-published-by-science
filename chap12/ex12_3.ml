(*  現在の最短距離や最短経路を保持するレコード *)
(* 頂点の集合はこのデータのリストになる *)
type eki_t = {
  namae : string; (* 駅名 *)
  saitan_kyori : float; (* 最短距離 *)
  temae_list : string list; (* 駅名のリスト *)
}

let test_data1 = [
  {namae="代々木上原"; saitan_kyori=infinity; temae_list=[]};
  {namae="代々木公園"; saitan_kyori=infinity; temae_list=[]};
  {namae="明治神宮前"; saitan_kyori=infinity; temae_list=[]};
  {namae="表参道"; saitan_kyori=infinity; temae_list=[]};
  {namae="乃木坂"; saitan_kyori=infinity; temae_list=[]}; 
]

(* 目的: リストの始点のみに対し、 saitan_kyori を 0 、temae_list を 始点の駅名のみからなるリストにする *)
(* shokika : eki_t list -> eki_t list *)
let shokika lst = lst

(* test: #use "ex12_3.ml";; *)
