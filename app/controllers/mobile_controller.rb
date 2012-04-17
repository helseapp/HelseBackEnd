class MobileController < ApplicationController
  layout 'mobile'
  
  def index
    @appusers = Appuser.all
  end
  
  def dagens
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
        @patients = []
        @visits.each do |v|
          @patients << v.patient
        end
      end
    end
  end
  
end
