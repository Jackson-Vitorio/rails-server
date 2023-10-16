require "application_system_test_case"

class MagiaTest < ApplicationSystemTestCase
  setup do
    @magium = magia(:one)
  end

  test "visiting the index" do
    visit magia_url
    assert_selector "h1", text: "Magia"
  end

  test "should create magium" do
    visit magia_url
    click_on "New magium"

    fill_in "Descricao", with: @magium.descricao
    fill_in "Nome", with: @magium.nome
    fill_in "Req", with: @magium.req
    fill_in "Tempo cast", with: @magium.tempo_cast
    click_on "Create Magium"

    assert_text "Magium was successfully created"
    click_on "Back"
  end

  test "should update Magium" do
    visit magium_url(@magium)
    click_on "Edit this magium", match: :first

    fill_in "Descricao", with: @magium.descricao
    fill_in "Nome", with: @magium.nome
    fill_in "Req", with: @magium.req
    fill_in "Tempo cast", with: @magium.tempo_cast
    click_on "Update Magium"

    assert_text "Magium was successfully updated"
    click_on "Back"
  end

  test "should destroy Magium" do
    visit magium_url(@magium)
    click_on "Destroy this magium", match: :first

    assert_text "Magium was successfully destroyed"
  end
end
