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
  def new
    @vehicle = Vehicle.new
  end
  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    redirect_to @vehicle
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
  def search
    @q = "%#{params[:query]}%"
    @vehicles = Vehicle.where("make LIKE ? or model LIKE ? or year LIKE ? or trim_level LIKE ?", @q, @q, @q, @q)
    render 'index'
  end
  
  private_methods
  def vehicle_params
    params.require(:vehicle).
      permit(:make, :model, :year, :miles, :vin, :body_description, :body_style, :body_door_count, :city_mpg, :highway_mpg, :classification, :drive_train_description, :drive_train_type, :drive_train_wheel_count, :drive_train_front_rear, :engine_description, :engine_displacement, :engine_displacement_unit, :engine_block_style, :engine_cylinder_count, :engine_valve_count, :engine_fuel_type, :engine_fuel_intake, :engine_camshaft, :exterior_color, :exterior_base_color, :exterior_color_code, :exterior_color_finish, :trim_level, :price, :on_lot_at, :status, :interior_color, :interior_fabric, :model_type, :new_or_used, :features)
  end
end