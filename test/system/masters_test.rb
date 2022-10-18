require "application_system_test_case"

class MastersTest < ApplicationSystemTestCase
  setup do
    @master = masters(:one)
  end

  test "visiting the index" do
    visit masters_url
    assert_selector "h1", text: "Masters"
  end

  test "should create master" do
    visit masters_url
    click_on "New master"

    fill_in "Driver", with: @master.driver
    fill_in "Manager", with: @master.manager
    fill_in "Rating", with: @master.rating
    fill_in "Strana", with: @master.strana
    fill_in "Strana1", with: @master.strana1
    fill_in "Truck", with: @master.truck
    click_on "Create Master"

    assert_text "Master was successfully created"
    click_on "Back"
  end

  test "should update Master" do
    visit master_url(@master)
    click_on "Edit this master", match: :first

    fill_in "Driver", with: @master.driver
    fill_in "Manager", with: @master.manager
    fill_in "Rating", with: @master.rating
    fill_in "Strana", with: @master.strana
    fill_in "Strana1", with: @master.strana1
    fill_in "Truck", with: @master.truck
    click_on "Update Master"

    assert_text "Master was successfully updated"
    click_on "Back"
  end

  test "should destroy Master" do
    visit master_url(@master)
    click_on "Destroy this master", match: :first

    assert_text "Master was successfully destroyed"
  end
end
