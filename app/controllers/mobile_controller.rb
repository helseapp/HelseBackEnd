class MobileController < ApplicationController
  layout 'mobile'
  
  def index
    @appusers = Appuser.all
  end
  
  def dagens
    @number = params[:appuser_number]
    @pass = params[:appuser_hashed_password]
    @user = Employee.find(:all, :select => "firstname, lastname", :conditions => ["mobilephone=?", @number])
    @name = "#{@user[0]['firstname']} #{@user[0]['lastname']}"
  end
  
end
