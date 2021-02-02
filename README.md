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

![スクリーンショット 2021-02-03 2 57 15](https://user-images.githubusercontent.com/68420090/106642538-d1f20e00-65cb-11eb-94c8-a08c1089acfe.png)

### ユーザー登録画面

![スクリーンショット 2021-02-03 2 55 55](https://user-images.githubusercontent.com/68420090/106642586-e33b1a80-65cb-11eb-8a1f-0f7bb78c4636.png)

### イベント作成画面

![スクリーンショット 2021-02-03 2 57 53](https://user-images.githubusercontent.com/68420090/106642657-fe0d8f00-65cb-11eb-9703-77e09f8bab4f.png)

### タスク管理画面

![スクリーンショット 2021-02-03 2 58 34](https://user-images.githubusercontent.com/68420090/106642733-14b3e600-65cc-11eb-9e17-d4e6f7062cf9.png)

# 工夫したポイント

- ユーザー登録画面で都道府県を登録しそれに対応する地点の天気情報を取得し表示できるよう工夫しました。
- タスク管理機能ではよりユーザビリティを考えて非同期通信で処理を行えるように工夫しました。

# 使用技術（開発環境）

- 言語：HTML,SCSS,Ruby,jquery
- フレームワーク：Ruby on Rails
- DB：mysql

# 課題や今後実装したい機能

- カレンダー共有機能
- 日記機能
- 通知機能

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