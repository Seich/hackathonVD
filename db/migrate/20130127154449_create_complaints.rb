class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.references :complaintType
      t.references :department
      t.references :municipality
      t.references :place
      t.references :institution
      t.text :description
      t.string :status
      t.date :incident_date
      t.date :first_hearing_date
      t.date :second_hearing_date
      t.date :sentencing_date
      t.text :observations

      t.timestamps
    end
    add_index :complaints, :complaintType_id
    add_index :complaints, :department_id
    add_index :complaints, :municipality_id
    add_index :complaints, :place_id
    add_index :complaints, :institution_id
  end
end
