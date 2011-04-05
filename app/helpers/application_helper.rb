module ApplicationHelper
  def log_in_out_links(current_user)
    if current_user.nil?
      link = content_tag(:span) do
        link_to 'Log in', login_path
      end
    else
      link = "Welcome, #{current_user[:username]}!" +
      content_tag(:div) + #this is a temporary fix..?
      link_to("Edit my profile", "http://localhost:3000/users/profile/edit") +
      content_tag(:li) do
        link_to 'Log out', logout_path
      end
    end
    link.html_safe
  end

  def sign_up(current_user)
    if current_user.nil?
      link = " or " +
      content_tag(:span) do
        link_to 'Sign up', new_user_path
      end
      link.html_safe
    end
  end

  def my_recipes_tab(current_user)
    if current_user
      link = content_tag(:span, :id => 'user_links') do
        link_to 'My Recipes', my_recipes_path, :class => 'nav_links'
      end
      link.html_safe
    end
  end

  def cuisines_tab(current_user)
    if !current_user.nil? && current_user.username == 'admin'
      link = content_tag(:span, :id => 'user_links') do
        link_to('Cuisines', cuisines_path, :class => 'nav_links')
      end
      link.html_safe
    end
  end

  def users_tab(current_user)
    if !current_user.nil? && current_user.username == 'admin'
      link = content_tag(:span, :id => 'user_links') do
        link_to 'Users', users_path, :class => 'nav_links'
      end
      link.html_safe
    end
  end

  def add_a_new_recipe(current_user)
    if !current_user.nil?
      link = content_tag(:span) do
        link_to 'New Recipe', new_recipe_path
      end
      link.html_safe
    end
  end


  # def submit_or_cancel(form, name='Cancel')
  #   form.submit + " or " +
  #     link_to(name, 'javascript:history.go(-1);', :class => 'cancel', :style => 'color:red;text-decoration:underline;')
  # end

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
