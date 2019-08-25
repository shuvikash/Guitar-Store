require 'test_helper'

class GuitarStoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guitar_stores_index_url
    assert_response :success
  end

  test "should get show" do
    get guitar_stores_show_url
    assert_response :success
  end

  test "should get new" do
    get guitar_stores_new_url
    assert_response :success
  end

  test "should get create" do
    get guitar_stores_create_url
    assert_response :success
  end

  test "should get edit" do
    get guitar_stores_edit_url
    assert_response :success
  end

  test "should get update" do
    get guitar_stores_update_url
    assert_response :success
  end

  test "should get destroy" do
    get guitar_stores_destroy_url
    assert_response :success
  end

end
