require 'test_helper'

class ClasesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get clases_new_url
    assert_response :success
  end

  test "should get create" do
    get clases_create_url
    assert_response :success
  end

  test "should get index" do
    get clases_index_url
    assert_response :success
  end

  test "should get show" do
    get clases_show_url
    assert_response :success
  end

  test "should get edit" do
    get clases_edit_url
    assert_response :success
  end

  test "should get update" do
    get clases_update_url
    assert_response :success
  end

  test "should get destroy" do
    get clases_destroy_url
    assert_response :success
  end

end
