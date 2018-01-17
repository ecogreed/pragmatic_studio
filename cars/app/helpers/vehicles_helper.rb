module VehiclesHelper
  def format_price(vehicle)
    number_to_currency(vehicle.price)
  end
  def format_miles(vehicle)
    if vehicle.low_miles?
      content_tag(:Strong, "Low Miles!")
    else
      vehicle.miles
    end
  end
end
