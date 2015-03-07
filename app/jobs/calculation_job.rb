require 'calculations'

class CalculationJob < ActiveJob::Base
  queue_as :default

  def perform(n)
    Calculations::fibonacci(n)
  end
end
