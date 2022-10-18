require 'test_helper'

class TopsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get tops_main_url
    assert_response :success
  end

  test "should get login" do
    get tops_login_url
    assert_response :success
  end

  test "should get logout" do
    get tops_logout_url
    assert_response :success
  end

end
