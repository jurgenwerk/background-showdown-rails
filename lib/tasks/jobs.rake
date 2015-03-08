namespace :jobs do
  task enqueue_calc: :environment do
    200.times do
      CalculationJob.perform_later
    end
  end

  task enqueue_io: :environment do
    500.times do
      IoJob.perform_later
    end
  end

  task enqueue_fast: :environment do
    2000.times do
      FastJob.perform_later
    end
  end
end
