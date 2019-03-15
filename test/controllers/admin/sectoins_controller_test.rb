require 'test_helper'

class Admin::SectoinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_sectoins_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_sectoins_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_sectoins_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_sectoins_destroy_url
    assert_response :success
  end

  test "should get create" do
    get admin_sectoins_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_sectoins_update_url
    assert_response :success
  end

  test "should get new" do
    get admin_sectoins_new_url
    assert_response :success
  end

end
