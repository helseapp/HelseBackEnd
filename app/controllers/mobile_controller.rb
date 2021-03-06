class MobileController < ApplicationController
  layout 'mobile'

  def index
     
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
    
    @latest_comments = @patient.comments.last(3)
    @comment = Comment.new(params[:comment])
    @comment[:patient_id] = params[:id]

  end

  
  def do_login
    
      @number = params[:employee_number]
      @pass = params[:employee_password]
      employee = Employee.first(:conditions =>["mobilephone=? and password=?",@number, @pass])
      
      if employee.nil?
        @error_message = "Ugyldig brukernavn/passord. Prov igjen."
        redirect_to :action => "index"
      else
        session[:employee] = employee.id
        redirect_to :action => "today"
      end 
  end
  
  def save_comment
      @comment = Comment.new(params[:comment])
      @comment[:employee_id] = session[:employee]
      
      if @comment.save
        redirect_to :action => "patientprofile", :id => @comment.patient_id
      end
  end
  
  
  def map
    @patients = Patient.all
    @pat = Patient.find(params[:id])
    
  end

end
