class CreateManegements < ActiveRecord::Migration[6.0]
  def change
    create_table :manegements do |t|
      t.integer :income,      null: false
      t.integer :takehome,    null: false
      t.integer :consumption, null: false
      t.timestamps
    end
  end
end
