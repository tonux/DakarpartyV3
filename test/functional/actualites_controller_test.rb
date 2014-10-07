require 'test_helper'

class ActualitesControllerTest < ActionController::TestCase
  setup do
    @actualite = actualites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actualites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actualite" do
    assert_difference('Actualite.count') do
      post :create, actualite: { contenu: @actualite.contenu, titleActu: @actualite.titleActu }
    end

    assert_redirected_to actualite_path(assigns(:actualite))
  end

  test "should show actualite" do
    get :show, id: @actualite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actualite
    assert_response :success
  end

  test "should update actualite" do
    put :update, id: @actualite, actualite: { contenu: @actualite.contenu, titleActu: @actualite.titleActu }
    assert_redirected_to actualite_path(assigns(:actualite))
  end

  test "should destroy actualite" do
    assert_difference('Actualite.count', -1) do
      delete :destroy, id: @actualite
    end

    assert_redirected_to actualites_path
  end
end
