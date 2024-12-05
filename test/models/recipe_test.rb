require "test_helper"
# New recipe, with no parameters.
class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Dont add recipe with no data" do
    recipe = Recipe.new
    assert_not recipe.save
  end
end
