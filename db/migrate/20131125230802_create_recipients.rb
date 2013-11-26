class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.integer :route_number
      t.integer :print_sort
      t.string :coldpref1
      t.string :coldpref2
      t.string :hotpref
      t.string :recipients_phone
      t.date :birthdate
      t.string :doctor_name
      t.string :doctor_phone
      t.string :diet
      t.string :substitutions
      t.string :contact_name
      t.string :contact_relationship
      t.string :contact_work_phone
      t.string :contact_phone
      t.text :note
      t.date :start_date
      t.date :end_date
      t.string :status
      t.string :referred_by
      t.text :directions_to_home
      t.string :assisted
      t.text :payment_details
      t.decimal :assistance_amount
      t.string :billing_name
      t.string :billing_address
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip
      t.text :termination_reason
      t.string :mon_hot
      t.string :tue_hot
      t.string :wed_hot
      t.string :thur_hot
      t.string :fri_hot
      t.string :sat_hot
      t.string :sun_hot

      t.timestamps
    end
  end
end
