require "test_helper"

class MonstrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monstro = monstros(:one)
  end

  test "should get index" do
    get monstros_url
    assert_response :success
  end

  test "should get new" do
    get new_monstro_url
    assert_response :success
  end

  test "should create monstro" do
    assert_difference("Monstro.count") do
      post monstros_url, params: { monstro: { actions: @monstro.actions, armor: @monstro.armor, car: @monstro.car, con: @monstro.con, cr: @monstro.cr, des: @monstro.des, dez: @monstro.dez, for: @monstro.for, hab: @monstro.hab, inte: @monstro.inte, lan: @monstro.lan, leng_res: @monstro.leng_res, leng_skills: @monstro.leng_skills, life: @monstro.life, nome: @monstro.nome, resis: @monstro.resis, sab: @monstro.sab, sense: @monstro.sense, skills: @monstro.skills, st: @monstro.st, tamtype: @monstro.tamtype } }
    end

    assert_redirected_to monstro_url(Monstro.last)
  end

  test "should show monstro" do
    get monstro_url(@monstro)
    assert_response :success
  end

  test "should get edit" do
    get edit_monstro_url(@monstro)
    assert_response :success
  end

  test "should update monstro" do
    patch monstro_url(@monstro), params: { monstro: { actions: @monstro.actions, armor: @monstro.armor, car: @monstro.car, con: @monstro.con, cr: @monstro.cr, des: @monstro.des, dez: @monstro.dez, for: @monstro.for, hab: @monstro.hab, inte: @monstro.inte, lan: @monstro.lan, leng_res: @monstro.leng_res, leng_skills: @monstro.leng_skills, life: @monstro.life, nome: @monstro.nome, resis: @monstro.resis, sab: @monstro.sab, sense: @monstro.sense, skills: @monstro.skills, st: @monstro.st, tamtype: @monstro.tamtype } }
    assert_redirected_to monstro_url(@monstro)
  end

  test "should destroy monstro" do
    assert_difference("Monstro.count", -1) do
      delete monstro_url(@monstro)
    end

    assert_redirected_to monstros_url
  end
end
