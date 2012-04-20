class MobileController < ApplicationController
  layout 'mobile'
  
  def index
    @appusers = Appuser.all
  end
  
  def today
    today = Date.today
    @number = params[:appuser_number]
    @pass = params[:appuser_hashed_password]
    @employee = Employee.first(:conditions =>["mobilephone=?",@number])
    
    if @employee.nil?
      @error_message = "Ugyldig bruker, prov igjen"
      render :action => 'index'
    else
      @appuser = Appuser.first(:conditions =>["employee_id=? and hashed_password=?", @employee.id, @pass])
      if @appuser.nil?
        @error_message = "Ugyldig bruker, prov igjen"
        render :action => 'index'
      else
        @visits = @employee.visits
        @todays_patients = []
        @visits.each do |v|
          @todays_patients << v.patient if v.day == today
        end
      end
    end
  end
  
  def patientprofile
    @patient = Patient.find(params[:id])
  end
  
  def extended_patientprofile
    @patient = Patient.find(params[:id])
  end
end
