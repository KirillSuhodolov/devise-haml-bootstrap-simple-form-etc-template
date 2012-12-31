class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.integer :age
      t.integer :weight
      t.integer :height
      t.string :constitution
      t.string :sport

      t.timestamps
    end
  end
end
