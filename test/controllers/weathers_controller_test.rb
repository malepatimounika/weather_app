require "test_helper"

class WeathersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get weathers_index_url
    assert_response :success
  end

  test "should get new" do
    get weathers_new_url
    assert_response :success
  end

  test "should get create" do
    get weathers_create_url
    assert_response :success
  end
end
