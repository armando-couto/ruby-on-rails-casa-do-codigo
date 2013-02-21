require 'test_helper'

class QuartosControllerTest < ActionController::TestCase
  setup do
    @quarto = quartos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quartos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quarto" do
    assert_difference('Quarto.count') do
      post :create, quarto: { descricao: @quarto.descricao, localizacao: @quarto.localizacao, titulo: @quarto.titulo }
    end

    assert_redirected_to quarto_path(assigns(:quarto))
  end

  test "should show quarto" do
    get :show, id: @quarto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quarto
    assert_response :success
  end

  test "should update quarto" do
    put :update, id: @quarto, quarto: { descricao: @quarto.descricao, localizacao: @quarto.localizacao, titulo: @quarto.titulo }
    assert_redirected_to quarto_path(assigns(:quarto))
  end

  test "should destroy quarto" do
    assert_difference('Quarto.count', -1) do
      delete :destroy, id: @quarto
    end

    assert_redirected_to quartos_path
  end
end
