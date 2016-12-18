class RemoveTextFromCreature < ActiveRecord::Migration[5.0]
  def change
    remove_column :creatures, :text, :text
  end
end
