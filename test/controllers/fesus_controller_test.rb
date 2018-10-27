require 'test_helper'

class FesusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fesus_index_url
    assert_response :success
  end

end
