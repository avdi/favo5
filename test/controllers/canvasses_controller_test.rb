require 'test_helper'

class CanvassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @canvass = canvasses(:one)
  end

  test "should get index" do
    get canvasses_url
    assert_response :success
  end

  test "should get new" do
    get new_canvass_url
    assert_response :success
  end

  test "should create canvass" do
    assert_difference('Canvass.count') do
      post canvasses_url, params: { canvass: { question: @canvass.question } }
    end

    assert_redirected_to canvass_url(Canvass.last)
  end

  test "should show canvass" do
    get canvass_url(@canvass)
    assert_response :success
  end

  test "should get edit" do
    get edit_canvass_url(@canvass)
    assert_response :success
  end

  test "should update canvass" do
    patch canvass_url(@canvass), params: { canvass: { question: @canvass.question } }
    assert_redirected_to canvass_url(@canvass)
  end

  test "should destroy canvass" do
    assert_difference('Canvass.count', -1) do
      delete canvass_url(@canvass)
    end

    assert_redirected_to canvasses_url
  end
end
