class Vehicle < ApplicationRecord
  def low_miles?
    miles < 5000
  end
  def title
    "#{self.year} #{self.make} #{self.model}"   
  end
end
