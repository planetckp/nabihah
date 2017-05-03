require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get us" do
    get pages_us_url
    assert_response :success
  end

  test "should get team" do
    get pages_team_url
    assert_response :success
  end

end
