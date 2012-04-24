class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_login_mobile
    unless session[:employee]
      redirect_to :controller => "mobile", :action => "index"
    end
  end
  
  
  def require_login_admin
    unless session[:employee] and Employee.find(session[:employee].id).is_admin?
      redirect_to :controller => "site", :action => "login"
    end
  end


end