require 'test_helper'

class PersoWeapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perso_weap = perso_weaps(:one)
  end

  test "should get index" do
    get perso_weaps_url
    assert_response :success
  end

  test "should get new" do
    get new_perso_weap_url
    assert_response :success
  end

  test "should create perso_weap" do
    assert_difference('PersoWeap.count') do
      post perso_weaps_url, params: { perso_weap: { personnage_id: @perso_weap.personnage_id, weapon_id: @perso_weap.weapon_id } }
    end

    assert_redirected_to perso_weap_url(PersoWeap.last)
  end

  test "should show perso_weap" do
    get perso_weap_url(@perso_weap)
    assert_response :success
  end

  test "should get edit" do
    get edit_perso_weap_url(@perso_weap)
    assert_response :success
  end

  test "should update perso_weap" do
    patch perso_weap_url(@perso_weap), params: { perso_weap: { personnage_id: @perso_weap.personnage_id, weapon_id: @perso_weap.weapon_id } }
    assert_redirected_to perso_weap_url(@perso_weap)
  end

  test "should destroy perso_weap" do
    assert_difference('PersoWeap.count', -1) do
      delete perso_weap_url(@perso_weap)
    end

    assert_redirected_to perso_weaps_url
  end
end
