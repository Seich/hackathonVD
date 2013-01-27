class CreateSchoolings < ActiveRecord::Migration
  def change
    create_table :schoolings do |t|
      t.string :level

      t.timestamps
    end
  end
end
