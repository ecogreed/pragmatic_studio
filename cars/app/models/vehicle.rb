class Vehicle < ApplicationRecord
  def low_miles?
    miles < 5000
  end
  def title
    "#{self.year} #{self.make} #{self.model}"   
  end
  def days_on_lot
    start_date = self.on_lot_at
    end_date = Time.current
    ((end_date - start_date).to_f / 1.day).floor
  end
end
