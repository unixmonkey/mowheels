require 'test_helper'

class RecipientMenusControllerTest < ActionController::TestCase
  setup do
    @recipient_menu = recipient_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipient_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipient_menu" do
    assert_difference('RecipientMenu.count') do
      post :create, recipient_menu: { diet: @recipient_menu.diet, main_dish1: @recipient_menu.main_dish1, main_dish2: @recipient_menu.main_dish2, main_dish_choice: @recipient_menu.main_dish_choice, menu_date: @recipient_menu.menu_date, menu_id: @recipient_menu.menu_id, recipient_id: @recipient_menu.recipient_id, side1: @recipient_menu.side1, side2: @recipient_menu.side2, side3: @recipient_menu.side3, side_choice: @recipient_menu.side_choice }
    end

    assert_redirected_to recipient_menu_path(assigns(:recipient_menu))
  end

  test "should show recipient_menu" do
    get :show, id: @recipient_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipient_menu
    assert_response :success
  end

  test "should update recipient_menu" do
    patch :update, id: @recipient_menu, recipient_menu: { diet: @recipient_menu.diet, main_dish1: @recipient_menu.main_dish1, main_dish2: @recipient_menu.main_dish2, main_dish_choice: @recipient_menu.main_dish_choice, menu_date: @recipient_menu.menu_date, menu_id: @recipient_menu.menu_id, recipient_id: @recipient_menu.recipient_id, side1: @recipient_menu.side1, side2: @recipient_menu.side2, side3: @recipient_menu.side3, side_choice: @recipient_menu.side_choice }
    assert_redirected_to recipient_menu_path(assigns(:recipient_menu))
  end

  test "should destroy recipient_menu" do
    assert_difference('RecipientMenu.count', -1) do
      delete :destroy, id: @recipient_menu
    end

    assert_redirected_to recipient_menus_path
  end
end
