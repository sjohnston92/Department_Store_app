require 'test_helper'

class DepartmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get department_index_url
    assert_response :success
  end

  test "should get show" do
    get department_show_url
    assert_response :success
  end

  test "should get edit" do
    get department_edit_url
    assert_response :success
  end

  test "should get create" do
    get department_create_url
    assert_response :success
  end

  test "should get new" do
    get department_new_url
    assert_response :success
  end

  test "should get destroy" do
    get department_destroy_url
    assert_response :success
  end

end
