class Feedback < ActionMailer::Base
  default :from => "example@example.com"
  
  def feedback(email_params, sent_at = Time.now)
    # subject "Electronic Mail: " << 'Feedback for RecipeApp!'
    # recipients "robertwaltonpearce@gmail.com"
    # # name email_params[:name]
    # ease_of_use email_params[:ease_of_use]
    # from email_params[:address]
    # sent_on sent_at
    # body
  end
end
