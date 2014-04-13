class RecipientMenu < ActiveRecord::Base
	belongs_to :recipient
	belongs_to :menu
end
