require "test_helper"

class VegetablesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vegetables_new_url
    assert_response :success
  end
end
