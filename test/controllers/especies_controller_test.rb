require 'test_helper'

class EspeciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @especy = especies(:one)
  end

  test "should get index" do
    get especies_url, as: :json
    assert_response :success
  end

  test "should create especy" do
    assert_difference('Especy.count') do
      post especies_url, params: { especy: { nome: @especy.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show especy" do
    get especy_url(@especy), as: :json
    assert_response :success
  end

  test "should update especy" do
    patch especy_url(@especy), params: { especy: { nome: @especy.nome } }, as: :json
    assert_response 200
  end

  test "should destroy especy" do
    assert_difference('Especy.count', -1) do
      delete especy_url(@especy), as: :json
    end

    assert_response 204
  end
end
