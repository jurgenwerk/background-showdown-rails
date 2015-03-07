require 'bcrypt'
require 'benchmark'

class CalculationJob < ActiveJob::Base
  queue_as :default

  def perform
    benchmark = Benchmark.measure do
      BCrypt::Password.create("password", cost: 15)
    end

    Measurement.create(seconds: benchmark.total, job_type: "calc")
  end
end
