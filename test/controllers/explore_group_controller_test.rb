require 'test_helper'

class ExploreGroupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get explore_group_index_url
    assert_response :success
  end

end
