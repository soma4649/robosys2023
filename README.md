# robosys2023
[![test](https://github.com/soma4649/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/soma4649/robosys2023/actions/workflows/test.yml)

2023年度千葉工業大学ロボットシステム学講義内での課題提出用リポジトリです。


このリポジトリでは、今回の課題で作成したplusコマンド、prefecturesコマンドを使用することができます。

## このリポジトリのインストール方法
１．以下のコードを任意のディレクトリで実行してください。

```
$ git clone git@github.com:soma4649/robosys2023.git
```
２. 以下のコードでrobosys2023のディレクトリに移動してください。

```
$ cd robosys2023
```
３．以下のコードで実行権限を与えてください。
```
$ chmod +x prefectures
```
４．robosys2023のディレクトリで使いたいコマンドを入力してください。
## 今回の課題で作成したコマンド

・plus


・prefectures

## plusコマンドの説明

標準入力から読み込んだ数値を足していきます。

## 使用方法
・入力例①
```
$ seq 10 | ./plus
55
```
・入力例②
```
$ seq 10 > nums 
$ ./plus < nums
55
```
## prefecturesコマンドの説明

都道府県名を漢字で入力すると県庁所在地を教えてくれます。

## 使用方法

```
$ echo 千葉県 | ./prefectures
千葉
```
```
$ echo 神奈川県 | ./prefectures
横浜
```

## 動作確認済みの環境
### ソフトウェア
・python3.7~3.10

### テスト環境
・Ubuntu 20.04.6 LTS on Windows

## 著作権
* このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布および使用が許可されています.
* prefecture_capitals.txt、prefectures、test2.bash以外のこのパッケージのコードは、下記のスライド( CC-BY-SA 4.0 by Ryuichi Ueda)のものを、本人の許可を得て自身の著作物としたものです.
   * ryuichiueda/my_slides/robosys_2022[[Github Pages](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)]
* ©　2023 Takeru Soma

