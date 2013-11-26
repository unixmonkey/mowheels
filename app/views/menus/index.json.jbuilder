json.array!(@menus) do |menu|
  json.extract! menu, :menu_date, :main_dish1, :main_dish2, :side1, :side2, :side3, :diet
  json.url menu_url(menu, format: :json)
end
