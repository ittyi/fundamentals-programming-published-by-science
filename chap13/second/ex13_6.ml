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
let shokika lst = match lst with
| [] -> []
| first :: rest -> {namae=first.namae; saitan_kyori=0.0; temae_list=( first.namae :: [])} :: rest

(* test: #use "ex12_3.ml";; *)
let test1 = shokika test_data1 = [
  {namae="代々木上原"; saitan_kyori=0.0; temae_list=["代々木上原"]};
  {namae="代々木公園"; saitan_kyori=infinity; temae_list=[]};
  {namae="明治神宮前"; saitan_kyori=infinity; temae_list=[]};
  {namae="表参道"; saitan_kyori=infinity; temae_list=[]};
  {namae="乃木坂"; saitan_kyori=infinity; temae_list=[]}; 
];;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool test1);;

(*
この場合、直前に確定した点は 代々木上原 
未定の駅はそれら以外よな。
*)

let koushin1 p q = q;;

(* test: ocaml ex13_6.ml *)
let () = Printf.printf "\nkoushin1\n";;
let test1 = koushin1 {
  namae="代々木上原";
  saitan_kyori=0.0;
  temae_list=[];
} {
  namae="代々木公園";
  saitan_kyori=infinity;
  temae_list=[];
} = {namae="代々木公園"; saitan_kyori=1.0; temae_list=[]};;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool test1);;