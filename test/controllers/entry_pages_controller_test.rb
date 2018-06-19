require 'test_helper'

class EntryPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_page = entry_pages(:one)
  end

  test "should get index" do
    get entry_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_page_url
    assert_response :success
  end

  test "should create entry_page" do
    assert_difference('EntryPage.count') do
      post entry_pages_url, params: { entry_page: { body: @entry_page.body, published: @entry_page.published, section_id: @entry_page.section_id, title: @entry_page.title } }
    end

    assert_redirected_to entry_page_url(EntryPage.last)
  end

  test "should show entry_page" do
    get entry_page_url(@entry_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_page_url(@entry_page)
    assert_response :success
  end

  test "should update entry_page" do
    patch entry_page_url(@entry_page), params: { entry_page: { body: @entry_page.body, published: @entry_page.published, section_id: @entry_page.section_id, title: @entry_page.title } }
    assert_redirected_to entry_page_url(@entry_page)
  end

  test "should destroy entry_page" do
    assert_difference('EntryPage.count', -1) do
      delete entry_page_url(@entry_page)
    end

    assert_redirected_to entry_pages_url
  end
end
