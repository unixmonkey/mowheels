require 'test_helper'

class RecipientsControllerTest < ActionController::TestCase
  setup do
    @recipient = recipients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipient" do
    assert_difference('Recipient.count') do
      post :create, recipient: { address: @recipient.address, assistance_amount: @recipient.assistance_amount, assisted: @recipient.assisted, billing_address: @recipient.billing_address, billing_city: @recipient.billing_city, billing_name: @recipient.billing_name, billing_state: @recipient.billing_state, billing_zip: @recipient.billing_zip, birthdate: @recipient.birthdate, city: @recipient.city, coldpref1: @recipient.coldpref1, coldpref2: @recipient.coldpref2, contact_name: @recipient.contact_name, contact_phone: @recipient.contact_phone, contact_relationship: @recipient.contact_relationship, contact_work_phone: @recipient.contact_work_phone, diet: @recipient.diet, directions_to_home: @recipient.directions_to_home, doctor_name: @recipient.doctor_name, doctor_phone: @recipient.doctor_phone, end_date: @recipient.end_date, first_name: @recipient.first_name, fri_hot: @recipient.fri_hot, hotpref: @recipient.hotpref, last_name: @recipient.last_name, mon_hot: @recipient.mon_hot, note: @recipient.note, payment_details: @recipient.payment_details, postal_code: @recipient.postal_code, print_sort: @recipient.print_sort, recipients_phone: @recipient.recipients_phone, referred_by: @recipient.referred_by, route_number: @recipient.route_number, sat_hot: @recipient.sat_hot, start_date: @recipient.start_date, state: @recipient.state, status: @recipient.status, substitutions: @recipient.substitutions, sun_hot: @recipient.sun_hot, termination_reason: @recipient.termination_reason, thur_hot: @recipient.thur_hot, tue_hot: @recipient.tue_hot, wed_hot: @recipient.wed_hot }
    end

    assert_redirected_to recipient_path(assigns(:recipient))
  end

  test "should show recipient" do
    get :show, id: @recipient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipient
    assert_response :success
  end

  test "should update recipient" do
    patch :update, id: @recipient, recipient: { address: @recipient.address, assistance_amount: @recipient.assistance_amount, assisted: @recipient.assisted, billing_address: @recipient.billing_address, billing_city: @recipient.billing_city, billing_name: @recipient.billing_name, billing_state: @recipient.billing_state, billing_zip: @recipient.billing_zip, birthdate: @recipient.birthdate, city: @recipient.city, coldpref1: @recipient.coldpref1, coldpref2: @recipient.coldpref2, contact_name: @recipient.contact_name, contact_phone: @recipient.contact_phone, contact_relationship: @recipient.contact_relationship, contact_work_phone: @recipient.contact_work_phone, diet: @recipient.diet, directions_to_home: @recipient.directions_to_home, doctor_name: @recipient.doctor_name, doctor_phone: @recipient.doctor_phone, end_date: @recipient.end_date, first_name: @recipient.first_name, fri_hot: @recipient.fri_hot, hotpref: @recipient.hotpref, last_name: @recipient.last_name, mon_hot: @recipient.mon_hot, note: @recipient.note, payment_details: @recipient.payment_details, postal_code: @recipient.postal_code, print_sort: @recipient.print_sort, recipients_phone: @recipient.recipients_phone, referred_by: @recipient.referred_by, route_number: @recipient.route_number, sat_hot: @recipient.sat_hot, start_date: @recipient.start_date, state: @recipient.state, status: @recipient.status, substitutions: @recipient.substitutions, sun_hot: @recipient.sun_hot, termination_reason: @recipient.termination_reason, thur_hot: @recipient.thur_hot, tue_hot: @recipient.tue_hot, wed_hot: @recipient.wed_hot }
    assert_redirected_to recipient_path(assigns(:recipient))
  end

  test "should destroy recipient" do
    assert_difference('Recipient.count', -1) do
      delete :destroy, id: @recipient
    end

    assert_redirected_to recipients_path
  end
end
