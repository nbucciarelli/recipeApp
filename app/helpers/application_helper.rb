module ApplicationHelper
  def log_in_out_links(current_user)
    if current_user.nil?
      link = content_tag(:li) do
        link_to 'Log in', login_path
      end
    else
      link = "Welcome, #{current_user[:username]}!" +
      content_tag(:br) +
      content_tag(:li) do
        link_to 'Log out', logout_path
      end
    end
    link.html_safe
  end
  
  # def admin_links(current_user)
  #   if current_user.username == 'admin'
  #     link = content_tag(:li) +
  #     content_tag(:h3, "Admin Links") +
  #     content_tag(:ul, :class => 'links') +
  #     content_tag(:li) do
  #       link_to 'Types of Cuisine', cuisine_path
  #     end
  #   else
  #     
  #   end
  # end
end
