require 'test_helper'

class ClonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clones_index_url
    assert_response :success
  end

  test "should get new" do
    get clones_new_url
    assert_response :success
  end

  test "should get edit" do
    get clones_edit_url
    assert_response :success
  end

  test "should get confirm" do
    get clones_confirm_url
    assert_response :success
  end

end
