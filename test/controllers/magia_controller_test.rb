require "test_helper"

class MagiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @magium = magia(:one)
  end

  test "should get index" do
    get magia_url
    assert_response :success
  end

  test "should get new" do
    get new_magium_url
    assert_response :success
  end

  test "should create magium" do
    assert_difference("Magium.count") do
      post magia_url, params: { magium: { descricao: @magium.descricao, nome: @magium.nome, req: @magium.req, tempo_cast: @magium.tempo_cast } }
    end

    assert_redirected_to magium_url(Magium.last)
  end

  test "should show magium" do
    get magium_url(@magium)
    assert_response :success
  end

  test "should get edit" do
    get edit_magium_url(@magium)
    assert_response :success
  end

  test "should update magium" do
    patch magium_url(@magium), params: { magium: { descricao: @magium.descricao, nome: @magium.nome, req: @magium.req, tempo_cast: @magium.tempo_cast } }
    assert_redirected_to magium_url(@magium)
  end

  test "should destroy magium" do
    assert_difference("Magium.count", -1) do
      delete magium_url(@magium)
    end

    assert_redirected_to magia_url
  end
end
