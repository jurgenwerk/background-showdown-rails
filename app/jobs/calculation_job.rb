require 'calculations'
require 'benchmark'

class CalculationJob < ActiveJob::Base
  queue_as :default

  def perform(n)
    benchmark = Benchmark.measure do
      Calculations::fibonacci(n)
    end

    Measurement.create(seconds: benchmark.real, job_type: "calc")
  end
end
