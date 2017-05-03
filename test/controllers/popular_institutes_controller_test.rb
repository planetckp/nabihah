require 'test_helper'

class PopularInstitutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @popular_institute = popular_institutes(:one)
  end

  test "should get index" do
    get popular_institutes_url
    assert_response :success
  end

  test "should get new" do
    get new_popular_institute_url
    assert_response :success
  end

  test "should create popular_institute" do
    assert_difference('PopularInstitute.count') do
      post popular_institutes_url, params: { popular_institute: { about_us: @popular_institute.about_us, address: @popular_institute.address, class_type: @popular_institute.class_type, courses: @popular_institute.courses, email: @popular_institute.email, estd: @popular_institute.estd, name: @popular_institute.name, phone: @popular_institute.phone } }
    end

    assert_redirected_to popular_institute_url(PopularInstitute.last)
  end

  test "should show popular_institute" do
    get popular_institute_url(@popular_institute)
    assert_response :success
  end

  test "should get edit" do
    get edit_popular_institute_url(@popular_institute)
    assert_response :success
  end

  test "should update popular_institute" do
    patch popular_institute_url(@popular_institute), params: { popular_institute: { about_us: @popular_institute.about_us, address: @popular_institute.address, class_type: @popular_institute.class_type, courses: @popular_institute.courses, email: @popular_institute.email, estd: @popular_institute.estd, name: @popular_institute.name, phone: @popular_institute.phone } }
    assert_redirected_to popular_institute_url(@popular_institute)
  end

  test "should destroy popular_institute" do
    assert_difference('PopularInstitute.count', -1) do
      delete popular_institute_url(@popular_institute)
    end

    assert_redirected_to popular_institutes_url
  end
end
