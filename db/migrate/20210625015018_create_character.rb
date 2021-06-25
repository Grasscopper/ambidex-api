class CreateCharacter < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :picture, default: ""
      t.integer :trust, null: false
      t.integer :action, null: false
      t.belongs_to :game
      t.belongs_to :team

      t.timestamps null: false
    end
  end
end
