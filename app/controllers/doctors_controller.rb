class DoctorsController < ApplicationController
  
  
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def show
  end

  def edit
  end

  def destroy
    @doctor.destroy
    redirct_to doctors_path
  end

  def update
  end

  private 


end