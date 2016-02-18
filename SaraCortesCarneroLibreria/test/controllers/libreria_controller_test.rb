require 'test_helper'

class LibreriaControllerTest < ActionController::TestCase
  test "should get alta" do
    get :alta
    assert_response :success
  end

  test "should get baja" do
    get :baja
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get listar" do
    get :listar
    assert_response :success
  end

end
