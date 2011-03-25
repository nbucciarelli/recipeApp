module ApplicationHelper
  def log_in_out_links(current_user)
    if current_user.nil?
      link = content_tag(:li) do
        link_to('Log in', login_path)
      end
    else
      link = "Welcome, #{current_user[:email]}!" +
      content_tag(:br) +
      content_tag(:li) do
        link_to('Log out', logout_path)
      end
    end
    link.html_safe
  end
end
