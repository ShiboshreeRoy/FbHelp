require "application_system_test_case"

class FbGroupsTest < ApplicationSystemTestCase
  setup do
    @fb_group = fb_groups(:one)
  end

  test "visiting the index" do
    visit fb_groups_url
    assert_selector "h1", text: "Fb groups"
  end

  test "should create fb group" do
    visit fb_groups_url
    click_on "New fb group"

    fill_in "Description", with: @fb_group.description
    fill_in "Title", with: @fb_group.title
    fill_in "User", with: @fb_group.user_id
    click_on "Create Fb group"

    assert_text "Fb group was successfully created"
    click_on "Back"
  end

  test "should update Fb group" do
    visit fb_group_url(@fb_group)
    click_on "Edit this fb group", match: :first

    fill_in "Description", with: @fb_group.description
    fill_in "Title", with: @fb_group.title
    fill_in "User", with: @fb_group.user_id
    click_on "Update Fb group"

    assert_text "Fb group was successfully updated"
    click_on "Back"
  end

  test "should destroy Fb group" do
    visit fb_group_url(@fb_group)
    click_on "Destroy this fb group", match: :first

    assert_text "Fb group was successfully destroyed"
  end
end
