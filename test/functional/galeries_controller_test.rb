require 'test_helper'

class GaleriesControllerTest < ActionController::TestCase
  setup do
    @galery = galeries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galeries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galery" do
    assert_difference('Galerie.count') do
      post :create, galery: { picture: @galery.picture, title: @galery.title }
    end

    assert_redirected_to galery_path(assigns(:galery))
  end

  test "should show galery" do
    get :show, id: @galery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galery
    assert_response :success
  end

  test "should update galery" do
    put :update, id: @galery, galery: { picture: @galery.picture, title: @galery.title }
    assert_redirected_to galery_path(assigns(:galery))
  end

  test "should destroy galery" do
    assert_difference('Galerie.count', -1) do
      delete :destroy, id: @galery
    end

    assert_redirected_to galeries_path
  end
end
