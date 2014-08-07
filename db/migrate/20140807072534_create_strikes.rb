class CreateStrikes < ActiveRecord::Migration
  def change
    create_table :strikes do |t|
      t.integer :score_a
      t.integer :score_b
      t.float :bat
      t.float :ball

      t.timestamps
    end
  end
end
