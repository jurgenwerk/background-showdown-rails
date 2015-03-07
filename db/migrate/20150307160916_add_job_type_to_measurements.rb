class AddJobTypeToMeasurements < ActiveRecord::Migration
  def change
    add_column :measurements, :job_type, :string
  end
end
