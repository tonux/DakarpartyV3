require 'test_helper'

class CategoryAnnoncesControllerTest < ActionController::TestCase
  setup do
    @category_annonce = category_annonces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_annonces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_annonce" do
    assert_difference('CategoryAnnonce.count') do
      post :create, category_annonce: { descCategory: @category_annonce.descCategory, titleCategory: @category_annonce.titleCategory }
    end

    assert_redirected_to category_annonce_path(assigns(:category_annonce))
  end

  test "should show category_annonce" do
    get :show, id: @category_annonce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_annonce
    assert_response :success
  end

  test "should update category_annonce" do
    put :update, id: @category_annonce, category_annonce: { descCategory: @category_annonce.descCategory, titleCategory: @category_annonce.titleCategory }
    assert_redirected_to category_annonce_path(assigns(:category_annonce))
  end

  test "should destroy category_annonce" do
    assert_difference('CategoryAnnonce.count', -1) do
      delete :destroy, id: @category_annonce
    end

    assert_redirected_to category_annonces_path
  end
end
