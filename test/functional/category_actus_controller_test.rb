require 'test_helper'

class CategoryActusControllerTest < ActionController::TestCase
  setup do
    @category_actu = category_actus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_actus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_actu" do
    assert_difference('CategoryActu.count') do
      post :create, category_actu: { descActu: @category_actu.descActu, titleActu: @category_actu.titleActu }
    end

    assert_redirected_to category_actu_path(assigns(:category_actu))
  end

  test "should show category_actu" do
    get :show, id: @category_actu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_actu
    assert_response :success
  end

  test "should update category_actu" do
    put :update, id: @category_actu, category_actu: { descActu: @category_actu.descActu, titleActu: @category_actu.titleActu }
    assert_redirected_to category_actu_path(assigns(:category_actu))
  end

  test "should destroy category_actu" do
    assert_difference('CategoryActu.count', -1) do
      delete :destroy, id: @category_actu
    end

    assert_redirected_to category_actus_path
  end
end
