class DepartmentsController < ApplicationController

  # before_action :set_department, only: [ :show, :edit , :update, :destroy]
  
  def index
    @departments = Department 
  end

  def show
    @department = Department.find(params[:id])
    
  end

  def new
    @department = Department.new
  end

  def edit
  end

  def create
  end

  def destroy
  end

  private

  def set_department
    @department = Department.find(params[:id])
  end



end
