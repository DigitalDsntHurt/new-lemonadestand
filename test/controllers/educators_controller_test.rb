require 'test_helper'

class EducatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @educator = educators(:one)
  end

  test "should get index" do
    get educators_url
    assert_response :success
  end

  test "should get new" do
    get new_educator_url
    assert_response :success
  end

  test "should create educator" do
    assert_difference('Educator.count') do
      post educators_url, params: { educator: { email: @educator.email, fname: @educator.fname, lname: @educator.lname, message: @educator.message, other: @educator.other, phone: @educator.phone, school_job_function: @educator.school_job_function, school_location: @educator.school_location, school_name: @educator.school_name, topics_of_interest: @educator.topics_of_interest } }
    end

    assert_redirected_to educator_url(Educator.last)
  end

  test "should show educator" do
    get educator_url(@educator)
    assert_response :success
  end

  test "should get edit" do
    get edit_educator_url(@educator)
    assert_response :success
  end

  test "should update educator" do
    patch educator_url(@educator), params: { educator: { email: @educator.email, fname: @educator.fname, lname: @educator.lname, message: @educator.message, other: @educator.other, phone: @educator.phone, school_job_function: @educator.school_job_function, school_location: @educator.school_location, school_name: @educator.school_name, topics_of_interest: @educator.topics_of_interest } }
    assert_redirected_to educator_url(@educator)
  end

  test "should destroy educator" do
    assert_difference('Educator.count', -1) do
      delete educator_url(@educator)
    end

    assert_redirected_to educators_url
  end
end
