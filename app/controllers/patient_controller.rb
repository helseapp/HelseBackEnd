class PatientController < ApplicationController
  def list
    @patients = Patient.all
  end
  
  
  def index 
    redirect_to :action => 'list'
  end
  
end
