class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.integer :seconds

      t.timestamps null: false
    end
  end
end
