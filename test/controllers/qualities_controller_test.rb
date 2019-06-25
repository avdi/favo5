require 'test_helper'

class QualitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @priority = qualities(:one)
  end

  test "should get index" do
    get priorities_url
    assert_response :success
  end

  test "should get new" do
    get new_priority_url
    assert_response :success
  end

  test "should create quality" do
    assert_difference('Quality.count') do
      post priorities_url, params: {priority: {tag: @priority.tag } }
    end

    assert_redirected_to priority_url(Priority.last)
  end

  test "should show quality" do
    get priority_url(@priority)
    assert_response :success
  end

  test "should get edit" do
    get edit_priority_url(@priority)
    assert_response :success
  end

  test "should update quality" do
    patch priority_url(@priority), params: {priority: {tag: @priority.tag } }
    assert_redirected_to priority_url(@priority)
  end

  test "should destroy quality" do
    assert_difference('Quality.count', -1) do
      delete priority_url(@priority)
    end

    assert_redirected_to priorities_url
  end
end
