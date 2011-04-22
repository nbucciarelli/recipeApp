class Feedback < ActionMailer::Base
  default :from => "RecipeApp@example.com"

  def feedback(email_params, sent_at = Time.now)
    subject "Electronic Mail: " << emails_params[:subject]
    recipients "robertwaltonpearce@gmail.com"
    # from email_params[:address]
    sent_on sent_at
    body :message => email_params[:body], :sender_name, email_params[:name]
  end
end
