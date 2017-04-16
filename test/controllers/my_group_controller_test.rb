require 'test_helper'

class MyGroupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_group_index_url
    assert_response :success
  end

end
