require 'test_helper'

class DiariesControllerTest < ActionDispatch::IntegrationTest
  test "should get show,edit,index" do
    get diaries_show,edit,index_url
    assert_response :success
  end

end
