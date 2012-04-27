class MobileController < ApplicationController
  layout 'mobile'
  
  def index
    do_login
    
  end
  
  def today
    todays_date = Date.today
    employee = Employee.find(session[:employee])
    @visits = employee.visits
    @todays_patients = []
    @visits.each do |v|
      @todays_patients << v.patient if v.day == todays_date
    end
    
  end
  
  
  def patientprofile
    todays_date = Date.today
    @patient = Patient.find(params[:id])
    @visit = @patient.visits.find(:all, :conditions =>["day=?", todays_date])
    @comment = Comment.new(params[:comment])
    @comment[:employees_id] = session[:employee]
    @comment[:patients_id] = @patient.id
    
    if @comment.save
      puts "Comment saved"
      render :action => "patientprofile"
    end
    
    
  end

  
  def do_login
    unless session[:employee].nil?
      redirect_to :action => "today"
    end
    
      @number = params[:employee_number]
      @pass = params[:employee_password]
      employee = Employee.first(:conditions =>["mobilephone=? and password=?",@number, @pass])
      
      if employee.nil?
        @error_message = "Ugyldig brukernavn/passord. Prov igjen."
      else
        session[:employee] = employee.id
        redirect_to :action => "today"
      end 
  end
  
  def new_comment
    @comment = Comment.new
    
  end

end
