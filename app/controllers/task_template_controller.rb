class TaskTemplateController < ApplicationController
  layout "backend"
  
  def list 
    @task_templates = TaskTemplate.all
  end 
  
  def show
      @task_templates = TaskTemplate.find(params[:id])  
  end
  
  def new 
    @task_template = TaskTemplate.new
    
  end 
  
  def create
     @task_template = TaskTemplate.new(params[:task_template])
     if @task_template.save
       flash[:success] = "Oppgavemalen '#{@task_template.name}' ble opprettet"
       redirect_to :action => 'list'
     else 
       flash[:error] = "Oppgavemalen kunne ikke bli opprettet. Forsoek igjen"
       render :action => 'new'
    end
    
  end 
  
  def update
    @task_template = TaskTemplate.find(params[:id])
    
  end
  
  def delete
    @task_template = TaskTemplate.find(params[:id])
    @task_template.destroy
    flash[:success] = "Oppgavemalen ble slettet"
    redirect_to :action => "list"
  end

  def index
    redirect_to :action => "list"
  end
  
end
