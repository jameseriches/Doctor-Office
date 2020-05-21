class DoctorsController < ApplicationController
  before_action :set_doc, only: [:show, :edit, :update, :destroy]
  
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doc_params)
    if @doctor.save
      redirect_to doctors_path
    else
      render :new
  end
end
  

  def edit
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  def update
    if @doctor.update(doc_params)
      redirect_to doctors_path
    else
      render :new
  end
end

  private 

  def set_doc
    @doctor = Doctor.find(params[:id])
  end

  def doc_params
    params.require(:doctor).permit(:first_name, :last_name)
  end

end