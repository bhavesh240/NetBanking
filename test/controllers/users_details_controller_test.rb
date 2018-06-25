require 'test_helper'

class UsersDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_details_index_url
    assert_response :success
  end

end
