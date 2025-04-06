let () = Printf.printf "Hello\n";;

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
let rec make_eki_list lst = 
    List.map (
        fun tmp -> {
            namae=tmp.kanji;
            saitan_kyori=infinity;
            temae_list=[]
        }
    ) lst

(* test: #use "ex12_2.ml";; *)
let () = Printf.printf "\n~~ make_eki_list test ~~ \n";;
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
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;


(*  現在の最短距離や最短経路を保持するレコード *)
(* 頂点の集合はこのデータのリストになる *)
type eki_t = {
  namae : string; (* 駅名 *)
  saitan_kyori : float; (* 最短距離 *)
  temae_list : string list; (* 駅名のリスト *)
}

let eki_list = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 

(* 目的：ekimei list から eki list を作る *) 
(* shokika : eki_t list -> string -> eki_t list *) 
let shokika eki_list kiten = 
    List.map (fun eki -> 
        if eki.namae = kiten 
            then {namae = eki.namae; saitan_kyori = 0.; temae_list = [eki.namae]}
            else eki
    ) eki_list

(* テスト *) 
let () = Printf.printf "\n~~ make_eki_list test ~~ \n"
let test1 = shokika [] "茗荷谷" = []
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = shokika eki_list "茗荷谷" = [
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []};
]

let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;
