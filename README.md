# ninecc
original c compiler by compilerbook

[@rui314](https://twitter.com/rui314)さんが作成したCコンパイラ作成本の手順に沿って、\
作成した成果物（オリジナルコンパイラ）を載せていきます。\
※オリジナルコンパイラと言っていますが、手順通りに作成するのでオリジナリティはないと思います。\
（後からオリジナリティが足せるといいな。それよりもまずは完成できること目指します！）

参考資料(@rui314著): https://www.sigbus.info/compilerbook

# test
コンパイル環境用のdockerイメージを取得する\

`docker build -t compilerbook https://www.sigbus.info/compilerbook/Dockerfile`

テストコードを実行

```
docker run --rm -v {path to ninecc}:/ninecc -w /ninecc compilerbook make test
make clean
```
