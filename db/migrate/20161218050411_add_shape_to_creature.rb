class AddShapeToCreature < ActiveRecord::Migration[5.0]
  def change
    add_column :creatures, :shape, :string
  end
end
