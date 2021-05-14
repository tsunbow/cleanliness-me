require 'test_helper'

class CleansControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get cleans_index_url
    assert_response :success
  end
end
