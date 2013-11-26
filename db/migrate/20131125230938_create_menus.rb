class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.date :menu_date
      t.string :main_dish1
      t.string :main_dish2
      t.string :side1
      t.string :side2
      t.string :side3
      t.string :diet

      t.timestamps
    end
  end
end
