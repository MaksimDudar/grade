require "application_system_test_case"

class MastercarsTest < ApplicationSystemTestCase
  setup do
    @mastercar = mastercars(:one)
  end

  test "visiting the index" do
    visit mastercars_url
    assert_selector "h1", text: "Mastercars"
  end

  test "should create mastercar" do
    visit mastercars_url
    click_on "New mastercar"

    fill_in "Driver", with: @mastercar.driver
    fill_in "Manager", with: @mastercar.manager
    fill_in "Rating", with: @mastercar.rating
    fill_in "Strana", with: @mastercar.strana
    fill_in "Strana1", with: @mastercar.strana1
    fill_in "Truck", with: @mastercar.truck
    click_on "Create Mastercar"

    assert_text "Mastercar was successfully created"
    click_on "Back"
  end

  test "should update Mastercar" do
    visit mastercar_url(@mastercar)
    click_on "Edit this mastercar", match: :first

    fill_in "Driver", with: @mastercar.driver
    fill_in "Manager", with: @mastercar.manager
    fill_in "Rating", with: @mastercar.rating
    fill_in "Strana", with: @mastercar.strana
    fill_in "Strana1", with: @mastercar.strana1
    fill_in "Truck", with: @mastercar.truck
    click_on "Update Mastercar"

    assert_text "Mastercar was successfully updated"
    click_on "Back"
  end

  test "should destroy Mastercar" do
    visit mastercar_url(@mastercar)
    click_on "Destroy this mastercar", match: :first

    assert_text "Mastercar was successfully destroyed"
  end
end
