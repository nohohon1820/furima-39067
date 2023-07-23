# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル

| Column             | Type       | Options                   |
| ------------------ | ---------- | ------------------------- |
| nickname           | string     | null: false               |
| email              | string     | null: false, unique: true |
| encrypted_password | string     | null: false               |
| first_name         | string     | null: false               |
| family_name        | string     | null: false               |
| first_name_kana    | string     | null: false               |
| family_name_kana   | string     | null: false               |
| birth_day          | date       | null: false               |


### Association
- has_many :items,dependent: :destroy


## destinationsテーブル

| Column        | Type   | Options     |
| ------------- | ------ | ----------- |
| post_code     | string | null: false |
| prefecture    | string | null: false |
| city          | string | null: false |
| address       | string | null: false |
| building_name | string |             |
| phone_number  | string | null: false | 


### Association
- belongs_to :user


## itemsテーブル

| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| name         | string  | null: false |
| introduction | text    | null: false |
| category_id  | integer | null: false |
| condition_id | integer | null: false |
| charged_id   | integer | null: false |
| prefecture   | integer | null: false, foreign_key: true |
| days_id      | integer | null: false, foreign_key: true |
| price        | integer | null: false, foreign_key: true |


### Association
- belongs_to :user
