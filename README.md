# robosys2023
2023年度千葉工業大学ロボットシステム学講義内での課題提出用リポジトリ


## このリポジトリで使用可能なコマンド

・plus
・prefectures

## plusコマンドの説明

標準入力から読み込んだ数値を足していきます。

## 使用方法

```
$ seq 10 | ./plus
55
```

## prefecturesコマンドの説明

都道府県名を漢字で入力すると県庁所在地を教えてくれます。

## 使用方法

・入力例①
```
$ ./prefectures
都道府県名を入力してください：千葉県
千葉
```
都道府県名を入力してくださいと最初に表示されるので、ここで調べたい都道府県を漢字で入力すると県庁所在地が出力されます。

・入力例②
```
$ echo 千葉県 | ./prefectures
都道府県名を入力してください：千葉
```
都道府県名をコマンドに入れることによって一度で県庁所在地が出力されます。

## コマンドの使用方法
１．以下のコードをhomeディレクトリで実行してください。

```
$ git clone git@github.com:soma4649/robosys2023.git
```
２. 以下のコードでrobosys2023のディレクトリに移動してください。

```
$ cd robosys2023
```
３．以下のコードで実行権限を与えてください
```
$ chmod +x prefectures
```
４．robosys2023のディレクトリで使いたいコマンドを入力してください。

## 著作権
* このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布および使用が許可されています.
* このパッケージのコードは、下記のスライド( CC-BY-SA 4.0 by Ryuichi Ueda)のものを、本人の許可を得て自身の著作物としたものです.
   * [ryuichiueda/my_slides_robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* ©　2023 Takeru Soma

