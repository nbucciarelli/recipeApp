class HomeController < ApplicationController

  def getting_started
  end

  def about
  end

  def feedback
  end

  def send_mail
    # Feedback.deliver_feedback(params[:email])
    flash[:notice] = 'Email was sent successfully! Thanks, <3'
    redirect_to root_path
  end

end
