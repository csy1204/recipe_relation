require 'test_helper'

class IngredsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingred = ingreds(:one)
  end

  test "should get index" do
    get ingreds_url
    assert_response :success
  end

  test "should get new" do
    get new_ingred_url
    assert_response :success
  end

  test "should create ingred" do
    assert_difference('Ingred.count') do
      post ingreds_url, params: { ingred: { item_id: @ingred.item_id, recipe_id: @ingred.recipe_id } }
    end

    assert_redirected_to ingred_url(Ingred.last)
  end

  test "should show ingred" do
    get ingred_url(@ingred)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingred_url(@ingred)
    assert_response :success
  end

  test "should update ingred" do
    patch ingred_url(@ingred), params: { ingred: { item_id: @ingred.item_id, recipe_id: @ingred.recipe_id } }
    assert_redirected_to ingred_url(@ingred)
  end

  test "should destroy ingred" do
    assert_difference('Ingred.count', -1) do
      delete ingred_url(@ingred)
    end

    assert_redirected_to ingreds_url
  end
end
