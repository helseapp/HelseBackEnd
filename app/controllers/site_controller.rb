class SiteController < ApplicationController
  layout 'backend'
  
  def index
    redirect_to :action => 'today'
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
  
  ## USER LOGGEDIN AND STUFF METHODS
  
  def login
    
    
  end
  
  
  def login_ajax
    
    
  end
  
  
  def logout
    
  end
  
  
  
  
  
  
  
end
