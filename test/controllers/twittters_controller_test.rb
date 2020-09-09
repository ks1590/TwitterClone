require 'test_helper'

class TwitttersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twittters_index_url
    assert_response :success
  end

end
