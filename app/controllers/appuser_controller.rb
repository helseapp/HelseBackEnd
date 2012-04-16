class AppuserController < ApplicationController
  layout 'mobile'
  
  def new
    @appuser = Appuser.new
  end
  
  def create
    @appuser = Appuser.new(params[:appuser])
  end
  
  def index
     @appusers = Appuser.all
    
  end
end
