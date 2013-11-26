json.array!(@recipient_menus) do |recipient_menu|
  json.extract! recipient_menu, :recipient_id, :menu_id, :menu_date, :main_dish1, :main_dish2, :main_dish_choice, :side1, :side2, :side3, :side_choice, :diet
  json.url recipient_menu_url(recipient_menu, format: :json)
end
