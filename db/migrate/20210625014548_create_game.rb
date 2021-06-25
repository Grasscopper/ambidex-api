class CreateGame < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.belongs_to :ambidex

      t.timestamps null: false
    end
  end
end
