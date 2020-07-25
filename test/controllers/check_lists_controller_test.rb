require 'test_helper'

class CheckListsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get check_lists_new_url
    assert_response :success
  end

  test "should get show" do
    get check_lists_show_url
    assert_response :success
  end

  test "should get index" do
    get check_lists_index_url
    assert_response :success
  end

  test "should get edit" do
    get check_lists_edit_url
    assert_response :success
  end

end
