require 'test_helper'

class GuitarStoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guitar_store_index_url
    assert_response :success
  end

  test "should get show" do
    get guitar_store_show_url
    assert_response :success
  end

  test "should get new" do
    get guitar_store_new_url
    assert_response :success
  end

  test "should get create" do
    get guitar_store_create_url
    assert_response :success
  end

  test "should get edit" do
    get guitar_store_edit_url
    assert_response :success
  end

  test "should get update" do
    get guitar_store_update_url
    assert_response :success
  end

  test "should get destroy" do
    get guitar_store_destroy_url
    assert_response :success
  end

end
