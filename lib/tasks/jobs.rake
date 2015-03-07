namespace :jobs do
  task enqueue_calc: :environment do
    50.times do
      CalculationJob.perform_later(30)
    end
  end

  task enqueue_io: :environment do
    50.times do
      IoJob.perform_later
    end
  end
end
