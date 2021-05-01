# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false  unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :cleans
- has_many :dones

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
- has_one :done

## completes テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| clean        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :clean

## runs テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| run_time    | datetime   | null: false                    |
| run_content | string     | null: false                    |
| takeover         | string     | null: false                    |
| note             | text       | null: false                    |
| complete         | references | null: false, foreign_key: true |

### Association

- belongs_to :done

## dones テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| clean        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :clean
- has_one :run