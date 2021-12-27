require "test_helper"

class MainpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mainpages_index_url
    assert_response :success
  end
end
