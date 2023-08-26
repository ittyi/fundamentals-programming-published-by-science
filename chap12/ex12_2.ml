(*  現在の最短距離や最短経路を保持するレコード *)
(* 頂点の集合はこのデータのリストになる *)
type eki_t = {
  namae : string; (* 駅名 *)
  saitan_kyori : float; (* 最短距離 *)
  temae_list : string list; (* 駅名のリスト *)
}

(* 目的: ekimei_t list を受け取り、 eki_t の list を作成する関数 *)
(* 仕様: saitan_kyori は無限大、 temae_list は空のリスト *)
(* make_eki_list : ekimei_t list -> eki_t list *)
let make_eki_list lst = lst
