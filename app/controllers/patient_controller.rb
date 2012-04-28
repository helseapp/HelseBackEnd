class PatientController < ApplicationController
  layout "backend"
  before_filter :admin_required, :except => :about
  
  def list
    @patients = Patient.all
  end
  
  def show
    @patient = Patient.find(params[:id])
  end
  
  
  def index 
    redirect_to :action => 'list'
  end
  
  def new 
    @patient = Patient.new
    @workplace = Workplace.all
  end
  
  def create 

    @patient = Patient.new(params[:patient])

    if @patient.save
      flash["success"] = "Pasienten ble lagret"
      redirect_to :action => "list"
    else 
      flash["error"] = "Pasienten kunne ikke lagres. Forsoek igjen"
      redirect_to :action => "new"
    end
  
  end
    
  
end
