require "test_helper"

class AgencyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agency_index_url
    assert_response :success
  end
end
