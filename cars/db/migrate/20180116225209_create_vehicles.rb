class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :miles
      t.string :vin
      t.string :body_description
      t.string :body_style
      t.integer :body_door_count
      t.integer :city_mpg
      t.integer :highway_mpg
      t.string :classification
      t.string :drive_train_description
      t.string :drive_train_type
      t.integer :drive_train_wheel_count
      t.string :drive_train_front_rear
      t.string :engine_description
      t.integer :engine_displacement
      t.string :engine_displacement_unit
      t.string :engine_block_style
      t.integer :engine_cylinder_count
      t.integer :engine_valve_count
      t.string :engine_fuel_type
      t.string :engine_fuel_intake
      t.string :engine_camshaft
      t.string :exterior_color
      t.string :exterior_base_color
      t.string :exterior_color_code
      t.string :exterior_color_finish
      t.string :trim_level
      t.decimal :price
      t.integer :year
      t.datetime :on_lot_at
      t.string :status
      t.string :interior_color
      t.string :interior_fabric
      t.string :model_type
      t.string :new_or_used
      t.text :features

      t.timestamps
    end
  end
end
