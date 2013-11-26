json.array!(@recipients) do |recipient|
  json.extract! recipient, :first_name, :last_name, :address, :city, :state, :postal_code, :route_number, :print_sort, :coldpref1, :coldpref2, :hotpref, :recipients_phone, :birthdate, :doctor_name, :doctor_phone, :diet, :substitutions, :contact_name, :contact_relationship, :contact_work_phone, :contact_phone, :note, :start_date, :end_date, :status, :referred_by, :directions_to_home, :assisted, :payment_details, :assistance_amount, :billing_name, :billing_address, :billing_city, :billing_state, :billing_zip, :termination_reason, :mon_hot, :tue_hot, :wed_hot, :thur_hot, :fri_hot, :sat_hot, :sun_hot
  json.url recipient_url(recipient, format: :json)
end
