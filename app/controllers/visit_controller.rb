class VisitController < ApplicationController
  layout "backend"
  
  
  def list
    @visits = Visit.all
  
  end
  
  def show
    @visit  = Visit.find(params[:id])
    
  end
  
  def new 
    @visit = Visit.new
    
  end
  
  def index
    redirect_to :action => "list"
    
  end
  
end
