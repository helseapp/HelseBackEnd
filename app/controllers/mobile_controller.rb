class MobileController < ApplicationController
  layout 'mobile'
  
  def index
    @appuser = Appuser.new
  end
  
end
