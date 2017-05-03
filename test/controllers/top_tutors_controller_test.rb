require 'test_helper'

class TopTutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @top_tutor = top_tutors(:one)
  end

  test "should get index" do
    get top_tutors_url
    assert_response :success
  end

  test "should get new" do
    get new_top_tutor_url
    assert_response :success
  end

  test "should create top_tutor" do
    assert_difference('TopTutor.count') do
      post top_tutors_url, params: { top_tutor: { about_me: @top_tutor.about_me, address: @top_tutor.address, courses: @top_tutor.courses, email: @top_tutor.email, experience: @top_tutor.experience, name: @top_tutor.name, phone: @top_tutor.phone, qualification: @top_tutor.qualification } }
    end

    assert_redirected_to top_tutor_url(TopTutor.last)
  end

  test "should show top_tutor" do
    get top_tutor_url(@top_tutor)
    assert_response :success
  end

  test "should get edit" do
    get edit_top_tutor_url(@top_tutor)
    assert_response :success
  end

  test "should update top_tutor" do
    patch top_tutor_url(@top_tutor), params: { top_tutor: { about_me: @top_tutor.about_me, address: @top_tutor.address, courses: @top_tutor.courses, email: @top_tutor.email, experience: @top_tutor.experience, name: @top_tutor.name, phone: @top_tutor.phone, qualification: @top_tutor.qualification } }
    assert_redirected_to top_tutor_url(@top_tutor)
  end

  test "should destroy top_tutor" do
    assert_difference('TopTutor.count', -1) do
      delete top_tutor_url(@top_tutor)
    end

    assert_redirected_to top_tutors_url
  end
end
