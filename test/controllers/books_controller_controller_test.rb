require 'test_helper'

class BooksControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_controller_index_url
    assert_response :success
  end

end
