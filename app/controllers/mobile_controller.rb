class MobileController < ApplicationController
  layout 'mobile'
  
  def index
    if session[:employee]
      redirect_to :action => "today"
    end

  end
  
  def today
    todays_date = Date.today
    @visits = session[:employee].visits
    @todays_patients = []
    @visits.each do |v|
      @todays_patients << v.patient if v.day == todays_date
    end
    
  end
  
  
  def patientprofile
    todays_date = Date.today
    @patient = Patient.find(params[:id])
    @visit = @patient.visits.find(:all, :conditions =>["day=?", todays_date])
    
    
  end

  
  def do_login
      @number = params[:employee_number]
      @pass = params[:employee_password]
      session[:employee] = Employee.first(:conditions =>["mobilephone=? and password=?",@number, @pass])
      if session[:employee]
        redirect_to :action => "index"
      else
        @error_message = "Ugyldig bruker, prov igjen"
      end
  end

end
