class CreateTeam < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
