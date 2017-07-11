module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end
  
  def source_helper(layout_name)
    if session[:source]
      greet = "Thanks for visiting me from #{session[:source]}. Layout: #{layout_name}"
      content_tag(:p, greet, class: "source-greeting")
    end
  end
  
  def copyright_generator
    HexagonalViewTool::Renderer.copyright 'Weston Kitchen', 'All rights reserved'
  end
end
