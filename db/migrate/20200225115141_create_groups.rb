class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.references :user,  foreign_key: true
      t.timestamps
    end
    # グループ名は一意のものにする
    add_index :groups, :name, unique: true
  end
end
