require 'test_helper'

class MenusControllerTest < ActionController::TestCase
  setup do
    @menu = menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu" do
    assert_difference('Menu.count') do
      post :create, menu: { diet: @menu.diet, main_dish1: @menu.main_dish1, main_dish2: @menu.main_dish2, menu_date: @menu.menu_date, side1: @menu.side1, side2: @menu.side2, side3: @menu.side3 }
    end

    assert_redirected_to menu_path(assigns(:menu))
  end

  test "should show menu" do
    get :show, id: @menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu
    assert_response :success
  end

  test "should update menu" do
    patch :update, id: @menu, menu: { diet: @menu.diet, main_dish1: @menu.main_dish1, main_dish2: @menu.main_dish2, menu_date: @menu.menu_date, side1: @menu.side1, side2: @menu.side2, side3: @menu.side3 }
    assert_redirected_to menu_path(assigns(:menu))
  end

  test "should destroy menu" do
    assert_difference('Menu.count', -1) do
      delete :destroy, id: @menu
    end

    assert_redirected_to menus_path
  end
end
