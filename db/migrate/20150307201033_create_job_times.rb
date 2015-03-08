class CreateJobTimes < ActiveRecord::Migration
  def change
    create_table :job_times do |t|
      t.datetime :time_start
      t.float :total
      t.datetime :time_end
    end
  end
end
