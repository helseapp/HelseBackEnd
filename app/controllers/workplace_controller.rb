class WorkplaceController < ApplicationController
  layout "backend"
  
  def list
    @workplaces = Workplace.all
    
  end
  
  def show
    @workplace = Workplace.find(params[:id])
    
  end
  
  def new
    @workplace = Workplace.new
    
  end 
  
  def create
    @workplace = Workplace.new(params[:workplace])
    if @workplace.save
      flash['success'] = "Nytt senter er lagret"
      redirect_to :action => "list"
    else 
      flash['error'] = "Senteret kunne ikke lagres. Forsoek igjen"
      redirect_to :action => "new"
    end
  end
  
  
  
  def update 
    
  end
  
  def delete 
  
  end
  
  
  def index 
    redirect_to :action => 'list'
  end
  
end
