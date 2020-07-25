require 'test_helper'

class PictureBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get picture_books_index_url
    assert_response :success
  end

  test "should get show" do
    get picture_books_show_url
    assert_response :success
  end

  test "should get edit" do
    get picture_books_edit_url
    assert_response :success
  end

end
