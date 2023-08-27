(* 一旦、上から四つだけとってくる *)
type ekimei_t = {
  kanji: string;
  kana: string;
  romaji: string;
  shozoku: string;
}

let global_ekimei_list = [ 
  {kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}; 
  {kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen"; shozoku="千代田線"}; 
  {kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae"; shozoku="千代田線"}; 
  {kanji="表参道"; kana="おもてさんどう"; romaji="omotesandou"; shozoku="千代田線"}; 
  {kanji="乃木坂"; kana="のぎざか"; romaji="nogizaka"; shozoku="千代田線"}; 
]


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
let rec make_eki_list lst = match lst with
| [] -> []
| first :: rest -> {
  namae=first.kanji;
  saitan_kyori=infinity;
  temae_list=[]
  } :: make_eki_list rest

(* test: #use "ex12_2.ml";; *)
let test1 = make_eki_list [
  {kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}; 
  {kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen"; shozoku="千代田線"}; 
  {kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae"; shozoku="千代田線"}; 
  {kanji="表参道"; kana="おもてさんどう"; romaji="omotesandou"; shozoku="千代田線"}; 
  {kanji="乃木坂"; kana="のぎざか"; romaji="nogizaka"; shozoku="千代田線"}; 
] = [
  {namae="代々木上原"; saitan_kyori=infinity; temae_list=[]};
  {namae="代々木公園"; saitan_kyori=infinity; temae_list=[]};
  {namae="明治神宮前"; saitan_kyori=infinity; temae_list=[]};
  {namae="表参道"; saitan_kyori=infinity; temae_list=[]};
  {namae="乃木坂"; saitan_kyori=infinity; temae_list=[]}; 
]
