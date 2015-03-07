class ChangeSecondsToFloat < ActiveRecord::Migration
  def change
    change_column :measurements, :seconds, :float
  end
end
