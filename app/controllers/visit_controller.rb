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
  
  def create
    
    @visit = Visit.new(params[:visit])

     if @visit.save
       flash["success"] = "Besoket ble lagt til"
       redirect_to :action => "list"
     else 
       flash["error"] = "Besoket kunne ikke lagres. Forsok igjen"
       redirect_to :action => "new"
     end
    
    
  end
  
  def index
    redirect_to :action => "list"
    
  end
  
end
