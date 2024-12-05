require "test_helper"

class InvalidNewRecipeWorkflowTest < ActionDispatch::IntegrationTest
  fixtures :all
  # test "the truth" do
  #   assert true
  # end

  test "Create a new recipe without ingredients" do
    @recipe = recipes(:one)
    get "/recipes/new"
    assert_response :success

    post recipes_url, params: { recipe: { name: @recipe.name, instructions: @recipe.instructions, difficulty: @recipe.difficulty } }
    assert_equal "/recipes", path
    assert_select "li", "Ingredients can't be blank"
  end
end
