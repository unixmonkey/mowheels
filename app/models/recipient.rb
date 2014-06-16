class Recipient < ActiveRecord::Base

  has_many :recipient_menus, dependent: :destroy
  has_many :menus, through: :recipient_menus

  def first_last_name
    [first_name, last_name].reject{|v| v.blank?}.join(" ")
  end

end
