class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.float :weight, null: false
      t.float :gole, null: false
      t.string :rule, null: false
      t.references :user,  foreign_key: true
      t.timestamps
    end
  end
end
