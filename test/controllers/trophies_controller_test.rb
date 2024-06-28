require "test_helper"

class TrophiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trophies_index_url
    assert_response :success
  end
end
