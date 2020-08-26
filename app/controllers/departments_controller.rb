class DepartmentsController < ApplicationController

  before_action :set_d, only: [:show, :edit , :update, :destroy]
  
  def index
    @departments = Department.all
  end

  def show
    # @department = Department.find(params[:id])
  end

  def new
    @department = Department.new
    render partial:"form"
  end

  def edit
    render partial:"form"

  end

  def create
    @department = Department.new(d_params)

    if @department.save
      redirect_to  departments_path

    else
      render :new
    
    end
  end

  def destroy
    set_d.destroy
    redirect_to  departments_path
  end

  private

   def d_params
    params.require(:department).permit(:name)
    end

  def set_d
    @department = Department.find(params[:id])
  end



end