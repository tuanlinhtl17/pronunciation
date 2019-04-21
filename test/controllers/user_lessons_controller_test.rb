require 'test_helper'

class UserLessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_lessons_create_url
    assert_response :success
  end

  test "should get update" do
    get user_lessons_update_url
    assert_response :success
  end

end
