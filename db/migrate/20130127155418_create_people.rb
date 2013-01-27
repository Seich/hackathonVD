class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.references :schooling
      t.references :maritalStatus
      t.references :race
      t.references :complaint
      t.string :lastname
      t.string :houseStatus
      t.string :identification
      t.boolean :handicap
      t.date :birthday
      t.integer :daughters
      t.integer :sons
      t.integer :incidents
      t.integer :averageIncome
      t.string :birthPlace
      t.string :name
      t.string :ocupation
      t.string :repeatOffender

      t.timestamps
    end
    add_index :people, :schooling_id
    add_index :people, :maritalStatus_id
    add_index :people, :race_id
    add_index :people, :complaint_id
  end
end
