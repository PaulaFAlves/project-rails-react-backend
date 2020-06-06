require 'test_helper'

class CultivaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cultivare = cultivares(:one)
  end

  test "should get index" do
    get cultivares_url, as: :json
    assert_response :success
  end

  test "should create cultivare" do
    assert_difference('Cultivare.count') do
      post cultivares_url, params: { cultivare: { especie_id: @cultivare.especie_id, nome: @cultivare.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show cultivare" do
    get cultivare_url(@cultivare), as: :json
    assert_response :success
  end

  test "should update cultivare" do
    patch cultivare_url(@cultivare), params: { cultivare: { especie_id: @cultivare.especie_id, nome: @cultivare.nome } }, as: :json
    assert_response 200
  end

  test "should destroy cultivare" do
    assert_difference('Cultivare.count', -1) do
      delete cultivare_url(@cultivare), as: :json
    end

    assert_response 204
  end
end
