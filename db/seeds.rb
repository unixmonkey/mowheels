# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  Recipient.where(first_name: 'Forrest', last_name: 'Held').first_or_create
  Recipient.where(first_name: 'David', last_name: 'Jones').first_or_create

  Menu.where(
    main_dish1: 'Chicken',
    main_dish2: 'Fish',
    side1: 'Corn',
    side2: 'Biscuit',
    side3: 'Green Beans',
    diet: 'Meat',
    menu_date: 1.day.from_now).first_or_create

  Menu.where(
    main_dish1: 'Burrito',
    main_dish2: 'Beans and Rice',
    side1: 'Salad',
    side2: 'Applesauce',
    side3: 'Muffin',
    diet: 'Vegetarian',
    menu_date: 2.days.from_now).first_or_create
end