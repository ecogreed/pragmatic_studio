class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :vehicles, :engine_cyclinder_count, :engine_cylinder_count
  end
end
