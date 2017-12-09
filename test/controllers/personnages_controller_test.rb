require 'test_helper'

class PersonnagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personnage = personnages(:one)
  end

  test "should get index" do
    get personnages_url
    assert_response :success
  end

  test "should get new" do
    get new_personnage_url
    assert_response :success
  end

  test "should create personnage" do
    assert_difference('Personnage.count') do
      post personnages_url, params: { personnage: { exp: @personnage.exp, firstweapons: @personnage.firstweapons, life: @personnage.life, name: @personnage.name, secondweapons: @personnage.secondweapons, velocity: @personnage.velocity } }
    end

    assert_redirected_to personnage_url(Personnage.last)
  end

  test "should show personnage" do
    get personnage_url(@personnage)
    assert_response :success
  end

  test "should get edit" do
    get edit_personnage_url(@personnage)
    assert_response :success
  end

  test "should update personnage" do
    patch personnage_url(@personnage), params: { personnage: { exp: @personnage.exp, firstweapons: @personnage.firstweapons, life: @personnage.life, name: @personnage.name, secondweapons: @personnage.secondweapons, velocity: @personnage.velocity } }
    assert_redirected_to personnage_url(@personnage)
  end

  test "should destroy personnage" do
    assert_difference('Personnage.count', -1) do
      delete personnage_url(@personnage)
    end

    assert_redirected_to personnages_url
  end
end
