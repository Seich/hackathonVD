class CreateComplaintTypes < ActiveRecord::Migration
  def change
    create_table :complaint_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
