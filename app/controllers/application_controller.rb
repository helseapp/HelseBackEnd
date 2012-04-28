class ApplicationController < ActionController::Base
  protect_from_forgery

  def login_required
    if session[:employee]
      return true
    end
    flash[:warning]='Vennligst logg inn for aa fortsette'
    redirect_to :controller => "site", :action => "login"
    return false 
  end
  
  
  def admin_required
    if session[:employee]
      employee = Employee.find(session[:employee])
      if employee.is_admin
        return true
      end
    end
    flash[:warning]='Vennligst logg inn som admin for aa fortsette'
    redirect_to :controller => "site", :action => "login"
    return false 
  end


end