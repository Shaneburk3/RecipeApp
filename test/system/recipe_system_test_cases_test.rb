require "application_system_test_case"

class RecipeSystemTestCasesTest < ApplicationSystemTestCase
  # test user interation with the application. visit new recipe page
  test "visit new recipe page" do
    visit new_recipe_url
    assert_selector "h1", text: "New Recipe"
  end

  test "user creates a new recipe" do
    visit new_recipe_url
    fill_in "Name",	with: "Bacon Cheeseburger"
    fill_in "Ingredients",	with: "bun, beef, lettuce, cheese, bacon"
    fill_in "Instructions",	with: "toast buns, cook pattys on grill, add cheese, bacon, lettuce."
    fill_in "Difficulty",	with: "Easy"   
    
    click_on "Create Recipe"
    assert_text "Recipe was successfully created."
    assert_text "Bacon Cheeseburger"
  end

end
