class EmployeeController < ApplicationController
  layout "backend"
  
  def list 
    @employees = Employee.all
  end 
  
  def show
      @employee = Employee.find(params[:id])  
      
  end
  
  def new 
    @employee = Employee.new
    @workplace = Workplace.all
    
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
       flash[:error] = "Brukeren kunne ikke bli opprettet. Forsoek igjen"
       render :action => 'new'
    end
    
  end 
  
  def update
    @employee = Employee.find(params[:id])
    
  end
  
  def delete
    @employee = Employee.find(params[:id])
    @employee.destroy
  end

  def index
    redirect_to :action => "list"
  end
  
end
