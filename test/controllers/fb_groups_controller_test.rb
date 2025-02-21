require "test_helper"

class FbGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fb_group = fb_groups(:one)
  end

  test "should get index" do
    get fb_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_fb_group_url
    assert_response :success
  end

  test "should create fb_group" do
    assert_difference("FbGroup.count") do
      post fb_groups_url, params: { fb_group: { description: @fb_group.description, title: @fb_group.title, user_id: @fb_group.user_id } }
    end

    assert_redirected_to fb_group_url(FbGroup.last)
  end

  test "should show fb_group" do
    get fb_group_url(@fb_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_fb_group_url(@fb_group)
    assert_response :success
  end

  test "should update fb_group" do
    patch fb_group_url(@fb_group), params: { fb_group: { description: @fb_group.description, title: @fb_group.title, user_id: @fb_group.user_id } }
    assert_redirected_to fb_group_url(@fb_group)
  end

  test "should destroy fb_group" do
    assert_difference("FbGroup.count", -1) do
      delete fb_group_url(@fb_group)
    end

    assert_redirected_to fb_groups_url
  end
end
