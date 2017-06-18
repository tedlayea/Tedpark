require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get comments_about_url
    assert_response :success
  end

end
