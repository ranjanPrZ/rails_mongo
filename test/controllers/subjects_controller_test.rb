require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get subjects_name_url
    assert_response :success
  end

  test "should get auther" do
    get subjects_auther_url
    assert_response :success
  end

  test "should get user:references" do
    get subjects_user:references_url
    assert_response :success
  end

end
