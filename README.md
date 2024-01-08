# searchable_Sample_SwiftUI

## 概要
 
searchableモディファイアの使用例

## 環境

macOS Sonoma 14.2.1

Xcode 15.1

iOS 17.2

## 画面仕様

<img width="227" alt="スクリーンショット 2024-01-08 15 50 05" src="https://github.com/ryokmra/searchable_Sample_SwiftUI/assets/41532442/f5f735fa-5733-486a-b575-ef3762d16c7f">  <img width="227" alt="スクリーンショット 2024-01-08 15 49 53" src="https://github.com/ryokmra/searchable_Sample_SwiftUI/assets/41532442/87cb6381-c5a3-4e8b-9969-7d0e938a3578">

## searchableのパラメータ

### text
検索バーで入力された文字列を渡す。

### isPresented
iOS17から対応となったパラメータ

検索がアクティブなっているか検知する為のBool値を渡す。

Viewの「キャンセル」ボタンが押されると値が切り替わる。

### placement
検索バーの位置を指定する

### prompt
検査バーに薄いグレーで表示さえる案内文

## 使用例

### onSubmitの利用

検索バーで入力が確定するとonSubmitのクロージャーが実行される。

例えば、入力された文字列を検索キーにして、webAPIからデータを取得する処理を組み込む事ができる。

### パラメータisPresentedの利用

モディファイアonChangeのパラメータにisPresentedの変数をセットし、検索状態がオフの場合に何か処理をする。
