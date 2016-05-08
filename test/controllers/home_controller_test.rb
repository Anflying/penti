require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get first_tag" do
    get :first_tag
    assert_response :success
  end

end
