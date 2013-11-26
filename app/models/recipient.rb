class Recipient < ActiveRecord::Base
 has_many :recipient_menus, dependent: :destroy
 has_many :menus, through: :recipient_menus
end
