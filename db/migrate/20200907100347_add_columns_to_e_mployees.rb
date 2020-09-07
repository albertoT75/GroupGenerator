class AddColumnsToEMployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :name, :string
    add_column :employees, :department, :string

  end
end
