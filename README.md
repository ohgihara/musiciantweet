# アプリ名
 Musiciantweet(ミュージシャンツイート)

# 概要
 クラシック音楽家の紹介ができ、その内容を誰でも閲覧することができます。
 また、音楽家の代表曲や音楽用語を調べることもできます。

# URL
 https://musiciantweet.herokuapp.com/

# テスト用アカウント



# 制作背景(意図)
 私はクラシック音楽が好きで、時間がある時にピアノを弾いています。そこで、
 作曲家の概要や、代表曲を手軽に調べられるサイトがあると便利であると感じ、
 本アプリケーションの制作に至りました。また、クラシック音楽の分野では専門的な音楽用語もあるため、
 それらを紹介できるページも用意しました。

# DEMO

## トップページ(投稿内容一覧)
[![Image from Gyazo](https://i.gyazo.com/a8eae5ed55ff985269814f24ac6ba6af.gif)](https://gyazo.com/a8eae5ed55ff985269814f24ac6ba6af)
サイトへアクセスした時のトップページになります。
このページには、投稿されている音楽家一覧が表示されています。
音楽家の画像の右上にカーソルを合わせることで、詳細ページなどに飛ぶことができます。

## 新規登録画面
[![Image from Gyazo](https://i.gyazo.com/e11c93abad9f78060b034edf9d4c106e.gif)](https://gyazo.com/e11c93abad9f78060b034edf9d4c106e)
サイトの閲覧はログインしなくても、可能ですが投稿機能を使用するには、
「新規登録」で必要情報の入力が必須です。


## ログイン画面
[![Image from Gyazo](https://i.gyazo.com/73938c96a5c086b256ac5e1107766eb4.gif)](https://gyazo.com/73938c96a5c086b256ac5e1107766eb4)
すでに、新規登録をしたことのあるユーザーは、ログイン画面で必要情報を
入力することで、ログインができます。


## 音楽家紹介画面
[![Image from Gyazo](https://i.gyazo.com/b49f77aa98306155e70dcb6257d1c7a6.gif)](https://gyazo.com/b49f77aa98306155e70dcb6257d1c7a6)
ログイン中のユーザーのみ、音楽家の紹介ができます。
項目ごとに紹介したい内容を打ち込み、投稿します。


## 音楽家詳細画面
[![Image from Gyazo](https://i.gyazo.com/d97440fe6cb462ea8ceee7d2d626e40e.gif)](https://gyazo.com/d97440fe6cb462ea8ceee7d2d626e40e)
こちらのページは、ログインしなくても閲覧できます。
投稿されている音楽家の概要や代表曲などの詳細を見ることができます。


## 音楽用語一覧画面
[![Image from Gyazo](https://i.gyazo.com/fedfb7d98d2a0ba8124f02a9dea872de.gif)](https://gyazo.com/fedfb7d98d2a0ba8124f02a9dea872de)
音楽家の詳細ページなどを閲覧している中、わからない用語などを調べるためのページです。
こちらのページも音楽家紹介と同じで、利用者が用語について紹介を行います。

## 音楽用語紹介画面
[![Image from Gyazo](https://i.gyazo.com/ce32ae32208f427e3bf1d35ef25bee37.gif)](https://gyazo.com/ce32ae32208f427e3bf1d35ef25bee37)
ログインしているユーザーのみが音楽用語について、紹介をすることができます。



# 工夫したポイント
「音楽紹介」ページにおいて、「時代区分」の箇所をアクティブハッシュを用いて選択をできるようになっております。
 また、最初の一覧ページは時代区分が古い順に音楽家が表示されるようにしました。
 クラシック音楽に詳しくない方も利用しやすいように、代表曲の掲載や、音楽用語を調べられるページの実装を行いました。


# 使用技術　（開発環境)
 ## バックエンド 
 Ruby, Ruby on Rails

 ## フロントエンド
 html, css

 ## データベース
 MySqul, SequelPro

 ## 本番環境
 Heroku

 ## ソース管理
 GitHub, GitHubDesktop

 ## テスト
 Rspec

 ## エディタ
 VSCode



# 課題や今後実装したい機能
  音楽家の出身地のカラムを設け、出身地の地図を閲覧できるように設定をしたい。

# DB設計

## users テーブル

| Column                  | Type   | Options                   |
| ------------------      | ------ | -----------               |
| email                   | string | null: false               |
| encrypted_password      | string | null: false               |
| nickname                | string | null: false               |


### Association

- has_many :musicians
- has_many :comments
- has_many :music_terms





## musicians テーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | -----------               |
| musician_name      | string  | null: false               |
| musician_view      | text    | null: false               |
| musician_song      | text    | null: false               |
| date_of_birth      | string  | null: false               |
| musician_era_id    | integer | null: false               |


### Association

- blongs_to :user
- has_many :comments




## comments テーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | -----------               |
| user_id            | integer | null: false               |
| musician_id        | integer | null: false               |
| text               | text    | null: false               |



### Association

- belongs_to :musician
- belongs_to :user





## music_terms テーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | -----------               |
| music_term         | storing | null: false               |
| music_term_view    | text    | null: false               |
| user_id            | integer | null: false               |



### Association
- belongs_to :user

