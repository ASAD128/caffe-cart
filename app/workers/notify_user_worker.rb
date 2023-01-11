class NotifyUserWorker
  include Sidekiq::Job

  def perform(user_id)
    user = User.find(user_id)
    user.username = 'Twilio'
    user.save!
    # Nofify User when Order is ready via ClearTab or any other notification service
  end
end
