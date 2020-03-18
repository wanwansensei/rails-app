require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
   @user       = users(:michael)
   @other_user = users(:archer)
 end

  test "Should redirect index when not logged in" do
    get users_path
    assert_redirected_to login_url
  end


  test "should get new" do
    get users_new_url
    assert_response :success
  end

end
