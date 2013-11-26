class Menu < ActiveRecord::Base
 has_many :recipient_menus
 has_many :recipients, through: :recipient_menus
 validates :menu_date, uniqueness: true
end
