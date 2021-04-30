class CreateExecutions < ActiveRecord::Migration[6.0]
  def change
    create_table :executions do |t|
      t.datetime   :complete_time,      null: false
      t.string     :complete_content,   null: false
      t.string     :takeover,           null: false
      t.text       :note,               
      t.references :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
