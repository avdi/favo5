require 'test_helper'

class QualitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quality = qualities(:one)
  end

  test "should get index" do
    get qualities_url
    assert_response :success
  end

  test "should get new" do
    get new_quality_url
    assert_response :success
  end

  test "should create quality" do
    assert_difference('Quality.count') do
      post qualities_url, params: { quality: { tag: @quality.tag } }
    end

    assert_redirected_to quality_url(Quality.last)
  end

  test "should show quality" do
    get quality_url(@quality)
    assert_response :success
  end

  test "should get edit" do
    get edit_quality_url(@quality)
    assert_response :success
  end

  test "should update quality" do
    patch quality_url(@quality), params: { quality: { tag: @quality.tag } }
    assert_redirected_to quality_url(@quality)
  end

  test "should destroy quality" do
    assert_difference('Quality.count', -1) do
      delete quality_url(@quality)
    end

    assert_redirected_to qualities_url
  end
end
