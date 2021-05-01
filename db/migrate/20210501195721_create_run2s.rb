class CreateRun2s < ActiveRecord::Migration[6.0]
  def change
    create_table :run2s do |t|
      t.datetime   :run_time,      null: false
      t.string     :run_content,   null: false
      t.string     :takeover,      null: false
      t.text       :note           
      t.references :done,          null: false,  foreign_key: true
      t.timestamps
    end
  end
end
