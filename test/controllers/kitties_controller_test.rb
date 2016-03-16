require 'test_helper'

class KittiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitty = kitties(:one)
    @owner = owners(:one)
  end

  test "should get index" do
    get kitties_url
    assert_response :success
  end

  test "should create kitty" do
    assert_difference('Kitty.count') do
      post kitties_url, params: { kitty: { birthday: @kitty.birthday, name: @kitty.name, owner_id: @owner.id } }
    end

    assert_response 201
  end

  test "should show kitty" do
    get kitty_url(@kitty)
    assert_response :success
  end

  test "should update kitty" do
    patch kitty_url(@kitty), params: { kitty: { birthday: @kitty.birthday, name: @kitty.name, owner_id: @owner.id } }
    assert_response 200
  end

  test "should destroy kitty" do
    assert_difference('Kitty.count', -1) do
      delete kitty_url(@kitty)
    end

    assert_response 204
  end
end
