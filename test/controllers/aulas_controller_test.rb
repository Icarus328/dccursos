require 'test_helper'

class AulasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get aulas_new_url
    assert_response :success
  end

  test "should get index" do
    get aulas_index_url
    assert_response :success
  end

  test "should get show" do
    get aulas_show_url
    assert_response :success
  end

  test "should get edit" do
    get aulas_edit_url
    assert_response :success
  end

end
