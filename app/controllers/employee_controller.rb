class EmployeeController < ApplicationController
  
  def list 
    @employees = Employee.all
    
  end 
  
  def show
    
  end 
  
  def new 
    @employee = Employee.new
    
  end 
  
  def create
     @employee = Employee.new(params[:employee])
     if params[:employee]['woman'] == 'false'
       @employee.woman = false
      else 
        @employee.woman = true
      end
     if @employee.save
       flash[:success] = "Brukeren #{@employee.firstname} ble opprettet"
       redirect_to :action => 'list'
     else 
       flash[:error] = "Brukeren kunne ikke bli opprettet. Forsøk igjen"
       render :action => 'new'
    end
    
  end 
  
  def update
    
  end
  
  def delete
    
  end


  def index
    redirect_to :action => "list"
    
  end
  
end
