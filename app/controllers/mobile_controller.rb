class MobileController < ApplicationController
  layout 'mobile'
  
  def index
    @appusers = Appuser.all
  end
  
end
