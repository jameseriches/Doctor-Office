class AppointmentsController < ApplicationController
  before_action :set_appt, only: [:show, :edit, :destroy, :update]
  
  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create 
    @appointment = Appointment.new(appt_params)
      if @appoint.save
        redirect_to appointments_path
      else
        render :new
      end
  end
  
  def show
  end

  def edit
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path 
  end

  def update
    if @appointment.update(appt_params)
      redirect_to appointments_path
    else 
      render :new
    end
  end

  private

  def set_appt
    params.require(:appointment).permit(:time, :date)
  end

  def appt_params
    @appointment = Appointment.find(params[:id])
  end

end