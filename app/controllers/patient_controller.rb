class PatientController < ApplicationController
  layout "backend"
  
  def list
    @patients = Patient.all
  end
  
  def show
    @patient = Patient.find(params[:id])
    
  end
  
  
  def index 
    redirect_to :action => 'list'
  end
  
  
end
