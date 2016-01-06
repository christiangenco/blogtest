# invoke with:
# ExampleJob.perform_later(args)
# ExampleJob.set(wait_until: Date.tomorrow.noon).perform_later(args)

class ExampleJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    # Do something later
    "performing "
    puts "sleeping 5 seconds"
    sleep 5
    puts "slept 5 seconds"
  end
end
