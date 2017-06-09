class CreatePoems < ActiveRecord::Migration[5.0]
  def change
    create_table :poems do |t|
      t.string :title, null: false
      t.string :firstline, null: false
      t.string :secondline, null: false
      t.string :thirdline, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
