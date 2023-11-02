require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get splash' do
    get static_pages_splash_url
    assert_response :success
  end
end
