require "test_helper"

class NavigationControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get navigation_home_url
    assert_response :success
  end

  test "should get projects" do
    get navigation_projects_url
    assert_response :success
  end

  test "should get articles" do
    get navigation_articles_url
    assert_response :success
  end
end
