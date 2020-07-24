require "application_system_test_case"

class NearestStationsTest < ApplicationSystemTestCase
  setup do
    @nearest_station = nearest_stations(:one)
  end

  test "visiting the index" do
    visit nearest_stations_url
    assert_selector "h1", text: "Nearest Stations"
  end

  test "creating a Nearest station" do
    visit nearest_stations_url
    click_on "New Nearest Station"

    fill_in "Line", with: @nearest_station.line
    fill_in "On foot", with: @nearest_station.on_foot
    fill_in "Station", with: @nearest_station.station
    click_on "Create Nearest station"

    assert_text "Nearest station was successfully created"
    click_on "Back"
  end

  test "updating a Nearest station" do
    visit nearest_stations_url
    click_on "Edit", match: :first

    fill_in "Line", with: @nearest_station.line
    fill_in "On foot", with: @nearest_station.on_foot
    fill_in "Station", with: @nearest_station.station
    click_on "Update Nearest station"

    assert_text "Nearest station was successfully updated"
    click_on "Back"
  end

  test "destroying a Nearest station" do
    visit nearest_stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nearest station was successfully destroyed"
  end
end
