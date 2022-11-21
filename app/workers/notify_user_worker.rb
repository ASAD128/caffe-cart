class NotifyUserWorker
  include Sidekiq::Job

  def perform(*args)
    # Nofify User Order is ready via ClearTab or any other notification service
  end
end
