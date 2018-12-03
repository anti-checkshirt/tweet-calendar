require 'test_helper'

class TweetCarenderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tweet_carender_index_url
    assert_response :success
  end

end
