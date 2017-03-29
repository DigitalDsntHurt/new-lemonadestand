require 'test_helper'

class VolunteersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @volunteer = volunteers(:one)
  end

  test "should get index" do
    get volunteers_url
    assert_response :success
  end

  test "should get new" do
    get new_volunteer_url
    assert_response :success
  end

  test "should create volunteer" do
    assert_difference('Volunteer.count') do
      post volunteers_url, params: { volunteer: { agreed_to_tos: @volunteer.agreed_to_tos, bio: @volunteer.bio, current_project: @volunteer.current_project, current_title: @volunteer.current_title, email: @volunteer.email, fname: @volunteer.fname, lname: @volunteer.lname, location: @volunteer.location, phone: @volunteer.phone, topics_of_expertise: @volunteer.topics_of_expertise, travel_distance: @volunteer.travel_distance } }
    end

    assert_redirected_to volunteer_url(Volunteer.last)
  end

  test "should show volunteer" do
    get volunteer_url(@volunteer)
    assert_response :success
  end

  test "should get edit" do
    get edit_volunteer_url(@volunteer)
    assert_response :success
  end

  test "should update volunteer" do
    patch volunteer_url(@volunteer), params: { volunteer: { agreed_to_tos: @volunteer.agreed_to_tos, bio: @volunteer.bio, current_project: @volunteer.current_project, current_title: @volunteer.current_title, email: @volunteer.email, fname: @volunteer.fname, lname: @volunteer.lname, location: @volunteer.location, phone: @volunteer.phone, topics_of_expertise: @volunteer.topics_of_expertise, travel_distance: @volunteer.travel_distance } }
    assert_redirected_to volunteer_url(@volunteer)
  end

  test "should destroy volunteer" do
    assert_difference('Volunteer.count', -1) do
      delete volunteer_url(@volunteer)
    end

    assert_redirected_to volunteers_url
  end
end
