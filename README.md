# programming-fundamentals-published-by-science-company
サポートページ: http://pllab.is.ocha.ac.jp/~asai/book/Top.html

## （旧）実行
```sh
ocaml
>#use "ファイル名.ml";;
```

2024年12月、公式の対話型インストールしてみたらすごいかっこよくなっていた。。
![公式のインタプリタを使ってみた](image.png)

## 起動
```sh
utop
```

## 実行
実行自体はこれで十分
```sh
% ocaml hello.ml
Hello, World!
```

ocaml コマンドが使えなくなった時、以下を打つと良いかも
```sh
eval $(opam env)
```
