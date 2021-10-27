require "test_helper"

class BlogFlowTest < ActionDispatch::IntegrationTest
  test "can see the welcome page"
    get "/"
    assert_select "h1", "Home#index"
  end
end
