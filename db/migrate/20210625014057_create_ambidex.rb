class CreateAmbidex < ActiveRecord::Migration[5.2]
  def change
    create_table :ambidexes do |t|
      t.string :key, null: false

      t.timestamps null: false
    end
  end
end
