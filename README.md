# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false  unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :cleans
- has_many :completes

## cleans テーブル

| Column             | Type         | Options                        |
| ------------------ | ------------ | ------------------------------ |
| clean_name         | string       | null: false                    |
| text               | text         | null: false                    |
| cleaning_place     | string       | null: false                    |
| status_id          | integer      | null: false                    |
| support_id         | integer      | null: false                    |
| important_id       | integer      | null: false                    |
| user               | references   | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :complete

## completes テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| clean        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :clean

## executions テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| complete_time    | datetime   | null: false                    |
| complete_content | string     | null: false                    |
| takeover         | string     | null: false                    |
| note             | text       | null: false                    |
| complete         | references | null: false, foreign_key: true |

### Association

- belongs_to :complete

## completes テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| clean        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :clean
- has_one :executions