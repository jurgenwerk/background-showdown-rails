class IoJob < ActiveJob::Base
  queue_as :default

  def perform(n)
    file_name = "io_job_#{SecureRandom.hex(5)}.txt"

    10000.times do
      File.open(file_name, 'a') { |f| f.write("#{SecureRandom.hex(1000)}") }
    end

    File.delete(file_name)
  end
end
