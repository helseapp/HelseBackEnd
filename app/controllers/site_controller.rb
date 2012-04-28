class SiteController < ApplicationController
  layout 'backend'
  before_filter :login_required, :only=>['today', 'logout', 'log', 'map']
  
  def index
    redirect_to :action => 'about'
  end
  
  def today
    @visits = Visit.all_today
  end
  
  def map
    @patients = Patient.all
    @workplaces = Workplace.all
  end
  
  
  def log
    
  end
  
  def login
    @employee = Employee.new
    
  end
  
  ## USER LOGGEDIN AND STUFF METHODS
  
  def do_login
      number = params[:employee][:mobilephone]
      pass = params[:employee][:password]
      employee = Employee.first(:conditions =>["mobilephone=? and password=?",number, pass])
      
      if employee.nil? or !employee.is_admin
        flash[:error] = "Ugyldig brukernavn/passord. Prov igjen."
        redirect_to :action => "login"
      else
        session[:employee] = employee.id
        flash[:success] = "Du er naa logget inn, #{employee.firstname}"
        redirect_to :action => "today"
      end 
  end
  
  
  
  def logout
    reset_session
    flash[:success] = "Du er naa logget ut"
    redirect_to :action => "login"
    
  end
  

  
  
  
  
  
  
  
end
