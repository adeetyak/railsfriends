require "application_system_test_case"

class FriendsLotsTest < ApplicationSystemTestCase
  setup do
    @friends_lot = friends_lots(:one)
  end

  test "visiting the index" do
    visit friends_lots_url
    assert_selector "h1", text: "Friends Lots"
  end

  test "creating a Friends lot" do
    visit friends_lots_url
    click_on "New Friends Lot"

    fill_in "Email", with: @friends_lot.email
    fill_in "First name", with: @friends_lot.first_name
    fill_in "Instagram", with: @friends_lot.instagram
    fill_in "Last name", with: @friends_lot.last_name
    fill_in "Mobile", with: @friends_lot.mobile
    click_on "Create Friends lot"

    assert_text "Friends lot was successfully created"
    click_on "Back"
  end

  test "updating a Friends lot" do
    visit friends_lots_url
    click_on "Edit", match: :first

    fill_in "Email", with: @friends_lot.email
    fill_in "First name", with: @friends_lot.first_name
    fill_in "Instagram", with: @friends_lot.instagram
    fill_in "Last name", with: @friends_lot.last_name
    fill_in "Mobile", with: @friends_lot.mobile
    click_on "Update Friends lot"

    assert_text "Friends lot was successfully updated"
    click_on "Back"
  end

  test "destroying a Friends lot" do
    visit friends_lots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friends lot was successfully destroyed"
  end
end
