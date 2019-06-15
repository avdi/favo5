require "application_system_test_case"

class CanvassesTest < ApplicationSystemTestCase
  setup do
    @canvass = canvasses(:one)
  end

  test "visiting the index" do
    visit canvasses_url
    assert_selector "h1", text: "Canvasses"
  end

  test "creating a Canvass" do
    visit canvasses_url
    click_on "New Canvass"

    fill_in "Question", with: @canvass.question
    click_on "Create Canvass"

    assert_text "Canvass was successfully created"
    click_on "Back"
  end

  test "updating a Canvass" do
    visit canvasses_url
    click_on "Edit", match: :first

    fill_in "Question", with: @canvass.question
    click_on "Update Canvass"

    assert_text "Canvass was successfully updated"
    click_on "Back"
  end

  test "destroying a Canvass" do
    visit canvasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Canvass was successfully destroyed"
  end
end
