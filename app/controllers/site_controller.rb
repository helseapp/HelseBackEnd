class SiteController < ApplicationController
  layout 'backend'
  
  def index
    redirect_to :action => 'today'
  end
  
  def today
    @visits = Visit.all
  end
  
  def map
    @patients = Patient.all
    @workplaces = Workplace.all
  end
  
  def log
    
  end
  
  
  
end
