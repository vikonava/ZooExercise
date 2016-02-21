class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.references :zoo, index: true, foreign_key: true
      t.string :name
      t.string :species

      t.timestamps null: false
    end
  end
end
