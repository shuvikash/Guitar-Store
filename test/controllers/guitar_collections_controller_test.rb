require 'test_helper'

class GuitarCollectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guitar_collections_index_url
    assert_response :success
  end

  test "should get show" do
    get guitar_collections_show_url
    assert_response :success
  end

  test "should get new" do
    get guitar_collections_new_url
    assert_response :success
  end

  test "should get create" do
    get guitar_collections_create_url
    assert_response :success
  end

  test "should get edit" do
    get guitar_collections_edit_url
    assert_response :success
  end

  test "should get update" do
    get guitar_collections_update_url
    assert_response :success
  end

  test "should get destroy" do
    get guitar_collections_destroy_url
    assert_response :success
  end

end
