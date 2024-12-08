require "test_helper"

class AccountControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_up" do
    get account_sign_up_url
    assert_response :success
  end

  test "should get log_in" do
    get account_log_in_url
    assert_response :success
  end

  test "should get forgot_password" do
    get account_forgot_password_url
    assert_response :success
  end

  test "should get new_password" do
    get account_new_password_url
    assert_response :success
  end

  test "should get info" do
    get account_info_url
    assert_response :success
  end
end
