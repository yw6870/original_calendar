# Original Calendar

# 概要

このアプリではスケジュール管理のカレンダーアプリです。

# 実装機能

- ユーザー管理機能（gem:devise）
- カレンダー表示・イベント作成機能（gem:simple-calendar）
- 天気予報機能（API:OpenWeatherMap）
- タスク管理機能

# 本番環境（デプロイ先とテストアカウント＆ID）

- GitHub:https://github.com/yw6870/original_calendar
- デプロイ先:https://original-calendar.herokuapp.com/
- テストアカウント:
- Email:test@test
- Password:aaaaa1

# DEMO

### トップ画面

![スクリーンショット 2021-01-26 12 04 04](https://user-images.githubusercontent.com/68420090/105794810-1fb8b600-5fcf-11eb-8e20-13ae7a91620d.png)

### ユーザー登録画面

![スクリーンショット 2021-01-26 12 06 51](https://user-images.githubusercontent.com/68420090/105794846-2f37ff00-5fcf-11eb-8811-42f0c63ef274.png)

### イベント作成画面

![スクリーンショット 2021-01-26 12 04 33](https://user-images.githubusercontent.com/68420090/105794915-4e369100-5fcf-11eb-9fd2-220e5a640b5a.png)

### タスク管理画面

![スクリーンショット 2021-01-26 12 05 59](https://user-images.githubusercontent.com/68420090/105794994-71f9d700-5fcf-11eb-843f-457a907e9006.png)

# 工夫したポイント

- 
- 

# 使用技術（開発環境）

- 言語：HTML,SCSS,Ruby,jquery
- フレームワーク：Ruby on Rails
- DB：mysql

# 課題や今後実装したい機能

- 
- 
- 
- 

# DB設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| prefecture_id      | integer | null: false               |

### Association

- has_many :events
- has_many :posts

## events テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| content    | text       | null: false                    |
| start_time | datetime   | null: false                    |
| end_time   | datetime   | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## posts テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user