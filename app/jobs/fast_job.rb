require 'bcrypt'
require 'benchmark'

class FastJob < ActiveJob::Base
  queue_as :default

  def perform
    job_time = JobTime.create(time_start: DateTime.now)

    job_time.update_attributes(time_end: DateTime.now)
  end
end
