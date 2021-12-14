class TestJob < ApplicationJob
  faktory_options retry: 5, custom: { unique_for: 10.minutes.to_i }
  queue_as :default

  def perform
    puts "Test"
  end
end
