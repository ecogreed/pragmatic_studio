class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end
  def show
    @vehicle = Vehicle.find(params[:id])
  end
  def edit
    @vehicle = Vehicle.find(params[:id])
  end
  def update
    @vehicle = Vehicle.find(params[:id])
    vehicle_params = params.require(:vehicle).
    permit(:make, :model, :price, :year, :on_lot_at)
    @vehicle.update(vehicle_params)
    redirect_to @vehicle
  end
  def new
    @vehicle = Vehicle.new
  end
  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.save
    redirect_to @vehicle
  end
  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_url
  end
    
end

private

  def vehicle_params
    params.require(:event).
      permit(:make, :model, :price, :year, :on_lot_at)
  end
