# README

# アプリ名
 Musiciantweet

# 概要
 クラシック音楽家の紹介ができ、その内容を誰でも閲覧することができます。
 また、音楽家の代表曲や音楽用語を調べることもできます。

# URL

# テスト用アカウント



# 制作背景(意図)
 私は、クラシック音楽が好きで、ピアノを引くのですが
 作曲家の概要や、代表曲を手軽に調べられるサイトがあると便利であると感じ、
 本アプリケーションの制作に至りました。また、クラシック音楽の分野では専門的な音楽用語もあるため、
 それらを紹介できるページも用意しました。


# 工夫したポイント
「音楽紹介」ページにおいて、「時代区分」の箇所をアクティブハッシュを用いて選択をできるようにした。
 また、最初の一覧ページは時代区分が古い順に音楽家が表示されるようにした。
 クラシック音楽に詳しくない方も利用しやすいように、代表曲の掲載や、音楽用語を調べられるページの実装をした。


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
 「音楽家紹介」のページにおいて、入力内容が空の時のみにバリデーションをかけるのではなく、入力内容が紹介ページにふさわしくなるようなバリデーション
 及び、エラーメッセージを表示できるようにしたい。


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


