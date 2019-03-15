require 'test_helper'

class RedosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get redos_index_url
    assert_response :success
  end

  test "should get show" do
    get redos_show_url
    assert_response :success
  end

  test "should get edit" do
    get redos_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get redos_destroy_url
    assert_response :success
  end

end
