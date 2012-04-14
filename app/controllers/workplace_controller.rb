class WorkplaceController < ApplicationController
  def list
    @workplaces = Workplace.all
    
  end
  
  def show
    @workplace = Workplace.find(params[:id])
    
  end
  
  def new
    @workplace.new
    
  end 
  
  def create
    @workplace.new(:params[:workplace])
    
  end
  
  def update 
    
  end
  
  def delete 
  
  end
  
  
  def index 
    redirect_to :action => 'list'
  end
  
end
