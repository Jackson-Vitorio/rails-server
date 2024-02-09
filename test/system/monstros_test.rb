require "application_system_test_case"

class MonstrosTest < ApplicationSystemTestCase
  setup do
    @monstro = monstros(:one)
  end

  test "visiting the index" do
    visit monstros_url
    assert_selector "h1", text: "Monstros"
  end

  test "should create monstro" do
    visit monstros_url
    click_on "New monstro"

    fill_in "Actions", with: @monstro.actions
    fill_in "Armor", with: @monstro.armor
    fill_in "Car", with: @monstro.car
    fill_in "Con", with: @monstro.con
    fill_in "Cr", with: @monstro.cr
    fill_in "Des", with: @monstro.des
    fill_in "Dez", with: @monstro.dez
    fill_in "For", with: @monstro.for
    fill_in "Hab", with: @monstro.hab
    fill_in "Inte", with: @monstro.inte
    fill_in "Lan", with: @monstro.lan
    check "Leng res" if @monstro.leng_res
    fill_in "Leng skills", with: @monstro.leng_skills
    fill_in "Life", with: @monstro.life
    fill_in "Nome", with: @monstro.nome
    fill_in "Resis", with: @monstro.resis
    fill_in "Sab", with: @monstro.sab
    fill_in "Sense", with: @monstro.sense
    fill_in "Skills", with: @monstro.skills
    fill_in "St", with: @monstro.st
    fill_in "Tamtype", with: @monstro.tamtype
    click_on "Create Monstro"

    assert_text "Monstro was successfully created"
    click_on "Back"
  end

  test "should update Monstro" do
    visit monstro_url(@monstro)
    click_on "Edit this monstro", match: :first

    fill_in "Actions", with: @monstro.actions
    fill_in "Armor", with: @monstro.armor
    fill_in "Car", with: @monstro.car
    fill_in "Con", with: @monstro.con
    fill_in "Cr", with: @monstro.cr
    fill_in "Des", with: @monstro.des
    fill_in "Dez", with: @monstro.dez
    fill_in "For", with: @monstro.for
    fill_in "Hab", with: @monstro.hab
    fill_in "Inte", with: @monstro.inte
    fill_in "Lan", with: @monstro.lan
    check "Leng res" if @monstro.leng_res
    fill_in "Leng skills", with: @monstro.leng_skills
    fill_in "Life", with: @monstro.life
    fill_in "Nome", with: @monstro.nome
    fill_in "Resis", with: @monstro.resis
    fill_in "Sab", with: @monstro.sab
    fill_in "Sense", with: @monstro.sense
    fill_in "Skills", with: @monstro.skills
    fill_in "St", with: @monstro.st
    fill_in "Tamtype", with: @monstro.tamtype
    click_on "Update Monstro"

    assert_text "Monstro was successfully updated"
    click_on "Back"
  end

  test "should destroy Monstro" do
    visit monstro_url(@monstro)
    click_on "Destroy this monstro", match: :first

    assert_text "Monstro was successfully destroyed"
  end
end
