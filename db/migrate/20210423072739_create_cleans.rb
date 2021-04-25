class CreateCleans < ActiveRecord::Migration[6.0]
  def change
    create_table :cleans do |t|
      t.string     :clean_name,         null: false
      t.text       :text,               null: false
      t.string     :cleaning_place,     null: false
      t.integer    :status_id,          null: false
      t.integer    :support_id,         null: false
      t.integer    :important_id,       null: false
      t.references :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
