class AddRefToGroups < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :group, foreign_key: true
  end
end
