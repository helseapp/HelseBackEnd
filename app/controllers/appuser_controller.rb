class AppuserController < ApplicationController
  layout 'mobile'
  
  def new
    @appuser = Appuser.new
  end
  
  def create
    @appuser = Appuser.new(params[:appuser])
  end
  
  def login
    emp_id = Employee.where(:mobilephone => params[:mobilephone])
    if Appuser.find(emp_id)[:hashed_password] == params[:hashed_password]
      flash[:success] = "Du er logget inn"
    
    end
    
  end
  
  def index
     @appusers = Appuser.all
    
  end
end
