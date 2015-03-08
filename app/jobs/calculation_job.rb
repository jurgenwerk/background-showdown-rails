require 'bcrypt'
require 'benchmark'

class CalculationJob < ActiveJob::Base
  queue_as :default

  def perform
    job_time = JobTime.create(time_start: DateTime.now)

    benchmark = Benchmark.measure do
      BCrypt::Password.create("password", cost: 15)
    end

    job_time.update_attributes(total: benchmark.total, time_end: DateTime.now)
  end
end
