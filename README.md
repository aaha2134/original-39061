# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique :true|
| encrypted_password | string | null: false |
| first_name         | string | null: false |
| last_name          | string | null: false |
| middle_name        | string | null: false |

### Association
- has_many :items
- has_many :orders


## items テーブル

| Column            | Type       | Options     |
| ------------------| ------     | ----------- |
| recipes           | string     | null: false |
| description       | text       | null: false |
| area_id           | integer    | null: false |
| price             | integer    | null: false |
| user              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :reserve


## reserves テーブル

| Column | Type       | Options                        |
| ------ | ---------- | -------------------------------|
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :item
- has_one  :address 



## addresses テーブル

| Column         | Type       | Options     |
| -------------- | ---------- | ----------- |
| post_code      | string     | null: false |
| area_id        | integer    | null: false |
| city           | string     | null: false |
| house_number   | string     | null: false |
| building_name  | string     | ----------- |
| phone_number   | string     | null: false |
| reserve        | references | null: false, foreign_key: true |


### Association

- belongs_to :reserve