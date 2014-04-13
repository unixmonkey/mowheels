class CreateRecipientMenus < ActiveRecord::Migration
  def change
    create_table :recipient_menus do |t|
      t.integer :recipient_id, :null => false
      t.integer :menu_id, :null => false
      t.date :menu_date
      t.string :main_dish1
      t.string :main_dish2
      t.string :main_dish_choice
      t.string :side1
      t.string :side2
      t.string :side3
      t.string :side_choice
      t.string :diet

      t.timestamps
    end
  end
end
