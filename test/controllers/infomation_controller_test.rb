require 'test_helper'

class InfomationControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get infomation_top_url
    assert_response :success
  end

end
