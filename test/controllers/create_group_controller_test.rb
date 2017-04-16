require 'test_helper'

class CreateGroupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get create_group_index_url
    assert_response :success
  end

end
