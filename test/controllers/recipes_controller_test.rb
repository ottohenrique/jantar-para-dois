require 'test_helper'

module SignInHelper
  def sign_in_as(user)
    post sessions_login_path(username: user.username, password: "projetoconclusao")
  end
end
 
class ActionDispatch::IntegrationTest
  include SignInHelper
end

class RecipesControllerTest < ActionDispatch::IntegrationTest
  fixtures :users

  test "should get index" do
    sign_in_as users(:john)

    get recipes_path
    assert_response :success
  end

  test "should get show" do
    sign_in_as users(:john)

    get recipes_path(123)
    assert_response :success
  end

end
