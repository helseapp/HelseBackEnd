class MessageController < ApplicationController
  layout "backend"
  
  def list
    @messages = Message.all
  end
  
  def show
    @message = Message.find(params[:message])
  end
  
  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(params[:message])
  end
  
  def delete
    @messages = Message.find(params[:id])
    @messages.destroy
  end
end
