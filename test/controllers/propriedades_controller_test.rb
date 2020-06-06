require 'test_helper'

class PropriedadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propriedade = propriedades(:one)
  end

  test "should get index" do
    get propriedades_url, as: :json
    assert_response :success
  end

  test "should create propriedade" do
    assert_difference('Propriedade.count') do
      post propriedades_url, params: { propriedade: { area: @propriedade.area, cultivar: @propriedade.cultivar, especie: @propriedade.especie, nome: @propriedade.nome, unidade: @propriedade.unidade } }, as: :json
    end

    assert_response 201
  end

  test "should show propriedade" do
    get propriedade_url(@propriedade), as: :json
    assert_response :success
  end

  test "should update propriedade" do
    patch propriedade_url(@propriedade), params: { propriedade: { area: @propriedade.area, cultivar: @propriedade.cultivar, especie: @propriedade.especie, nome: @propriedade.nome, unidade: @propriedade.unidade } }, as: :json
    assert_response 200
  end

  test "should destroy propriedade" do
    assert_difference('Propriedade.count', -1) do
      delete propriedade_url(@propriedade), as: :json
    end

    assert_response 204
  end
end
