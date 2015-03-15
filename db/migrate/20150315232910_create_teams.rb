class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :mascot
      t.string :college
      t.boolean :is_eliminated
      t.integer :wins
      t.references :region, index: true
      t.integer :seed

      t.timestamps
    end
  end
end
