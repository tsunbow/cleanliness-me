class CreateDones < ActiveRecord::Migration[6.0]
  def change
    create_table :dones do |t|
      t.references :user,               null: false, foreign_key: true
      t.references :clean,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
