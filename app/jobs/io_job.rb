require 'benchmark'
require 'open-uri'

class IoJob < ActiveJob::Base
  queue_as :default

  def perform
    job_time = JobTime.create(time_start: DateTime.now)

    benchmark = Benchmark.measure do
      open('http://localhost:3001/')
    end

    job_time.update_attributes(total: benchmark.total, time_end: DateTime.now)
  end
end
