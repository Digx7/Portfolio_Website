require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get manage_posts" do
    get admin_manage_posts_url
    assert_response :success
  end

  test "should get manage_users" do
    get admin_manage_users_url
    assert_response :success
  end
end
