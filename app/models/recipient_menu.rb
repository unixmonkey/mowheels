class RecipientMenu < ActiveRecord::Base
	belongs_to :recipients
	belongs_to :menus
end
