require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal = meals(:one)
  end

  test "should get index" do
    get meals_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_url
    assert_response :success
  end

  test "should create meal" do
    assert_difference('Meal.count') do
      post meals_url, params: { meal: { description: @meal.description, description: @meal.description, description: @meal.description, description: @meal.description, description: @meal.description, meal1: @meal.meal1, meal2: @meal.meal2, meal3: @meal.meal3, meal4: @meal.meal4, meal5: @meal.meal5 } }
    end

    assert_redirected_to meal_url(Meal.last)
  end

  test "should show meal" do
    get meal_url(@meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_url(@meal)
    assert_response :success
  end

  test "should update meal" do
    patch meal_url(@meal), params: { meal: { description: @meal.description, description: @meal.description, description: @meal.description, description: @meal.description, description: @meal.description, meal1: @meal.meal1, meal2: @meal.meal2, meal3: @meal.meal3, meal4: @meal.meal4, meal5: @meal.meal5 } }
    assert_redirected_to meal_url(@meal)
  end

  test "should destroy meal" do
    assert_difference('Meal.count', -1) do
      delete meal_url(@meal)
    end

    assert_redirected_to meals_url
  end
end
