class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :size
      t.string :photo
      t.text :availability
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
