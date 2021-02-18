require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index without since" do
    get users_url
    assert_response :success
  end

  test "should get index with since query param" do
    get users_url, params: { since: 1 }
    assert_response :success
  end

  test "should get details" do
    get user_details_url(user_id: 'jeffersonrnb')
    assert_response :success
  end

  test "should get repos" do
    get user_repos_url(user_id: 'jeffersonrnb')
    assert_response :success
  end
end
