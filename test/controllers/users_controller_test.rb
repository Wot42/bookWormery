require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get controler" do
    get users_controler_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end
end
