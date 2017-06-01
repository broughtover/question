require 'test_helper'

class PuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puestion = puestions(:one)
  end

  test "should get index" do
    get puestions_url
    assert_response :success
  end

  test "should get new" do
    get new_puestion_url
    assert_response :success
  end

  test "should create puestion" do
    assert_difference('Puestion.count') do
      post puestions_url, params: { puestion: { message: @puestion.message, puestion: @puestion.puestion, title: @puestion.title } }
    end

    assert_redirected_to puestion_url(Puestion.last)
  end

  test "should show puestion" do
    get puestion_url(@puestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_puestion_url(@puestion)
    assert_response :success
  end

  test "should update puestion" do
    patch puestion_url(@puestion), params: { puestion: { message: @puestion.message, puestion: @puestion.puestion, title: @puestion.title } }
    assert_redirected_to puestion_url(@puestion)
  end

  test "should destroy puestion" do
    assert_difference('Puestion.count', -1) do
      delete puestion_url(@puestion)
    end

    assert_redirected_to puestions_url
  end
end
