# usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
## Association
- belongs_to :status
- has_many :groups
- has_many :messages
- has_many :comments

# messagesテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|image|string||
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
## Association
- belongs_to :group
- belongs_to :user
- has_many :comments

# commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user|references|null: false, foreign_key: true|
|message|references|null: false, foreign_key: true|
## Association
- belongs_to :message
- belongs_to :user

# statusテーブル
|Column|Type|Options|
|------|----|-------|
|weight|float|null: false|
|rule|text|null: false|
|Gole|float|null: false|
|user|references|null: false, foreign_key: true|
## Association
- belongs_to :user

# groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|user|references|null: false, foreign_key: true|
## Association
 - belongs_to :user
 - has_many :messages
