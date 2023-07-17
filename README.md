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

| Column           | Type       | Options     |
| ---------------- | ---------- | ----------- |
| nickname         | string     | null: false |
| email            | string     | null: false |
| password         | string     | null: false |
| first_name       | string     | null: false |
| family_name      | string     | null: false |
| first_name_kana  | string     | null: false |
| family_name_kana | string     | null: false |
| birth_day        | date       | null: false |


### Association
- has_many :items,dependent: :destroy
- has_one :card
- has_one :destination dependent: :destroy


## destinationテーブル

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

| Column               | Type    | Options     |
| -------------------- | ------- | ----------- |
| image                | string  | null: false |
| name                 | string  | null: false |
| introduction         | text    | null: false |
| category             | integer | null: false |
| item_condition       | integer | null: false |
| shipping_type_charge | integer | null: false |
| sender_area          | integer | null: false |
| day_to_ship          | integer | null: false |
| price                | integer | null: false |


### Association
- belongs_to :user


## cardsテーブル

| Column      | Type    | Options                        |
| ----------- | ------- | ------------------------------ |
| user_id     | integer | null: false, foreign_key: true |  
| customer_id | string  | null: false                    |
| card_id     | string  | null: false                    |

### Association
- belongs_to :user
