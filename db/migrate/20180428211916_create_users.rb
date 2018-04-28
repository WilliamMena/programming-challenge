class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.references :VideoUsage, foreign_key: true

      t.timestamps
    end
  end
end
