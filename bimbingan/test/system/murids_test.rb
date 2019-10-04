require "application_system_test_case"

class MuridsTest < ApplicationSystemTestCase
  setup do
    @murid = murids(:one)
  end

  test "visiting the index" do
    visit murids_url
    assert_selector "h1", text: "Murids"
  end

  test "creating a Murid" do
    visit murids_url
    click_on "New Murid"

    fill_in "Alamat", with: @murid.alamat
    fill_in "Kelas", with: @murid.kelas
    fill_in "Lecture", with: @murid.lecture_id
    fill_in "Major", with: @murid.major_id
    fill_in "Nama", with: @murid.nama
    fill_in "Nim", with: @murid.nim
    click_on "Create Murid"

    assert_text "Murid was successfully created"
    click_on "Back"
  end

  test "updating a Murid" do
    visit murids_url
    click_on "Edit", match: :first

    fill_in "Alamat", with: @murid.alamat
    fill_in "Kelas", with: @murid.kelas
    fill_in "Lecture", with: @murid.lecture_id
    fill_in "Major", with: @murid.major_id
    fill_in "Nama", with: @murid.nama
    fill_in "Nim", with: @murid.nim
    click_on "Update Murid"

    assert_text "Murid was successfully updated"
    click_on "Back"
  end

  test "destroying a Murid" do
    visit murids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Murid was successfully destroyed"
  end
end
