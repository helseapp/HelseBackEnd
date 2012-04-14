class WorkplaceController < ApplicationController
  def list
    @workplaces = Workplace.all
    
  end
  
  def show
    
  end
  
  def new
    
  end 
  
  def create
    
  end
  
  
  def index 
    redirect_to :action => 'list'
  end
  
end
