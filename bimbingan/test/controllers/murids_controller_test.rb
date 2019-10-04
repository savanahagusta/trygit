require 'test_helper'

class MuridsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @murid = murids(:one)
  end

  test "should get index" do
    get murids_url
    assert_response :success
  end

  test "should get new" do
    get new_murid_url
    assert_response :success
  end

  test "should create murid" do
    assert_difference('Murid.count') do
      post murids_url, params: { murid: { alamat: @murid.alamat, kelas: @murid.kelas, lecture_id: @murid.lecture_id, major_id: @murid.major_id, nama: @murid.nama, nim: @murid.nim } }
    end

    assert_redirected_to murid_url(Murid.last)
  end

  test "should show murid" do
    get murid_url(@murid)
    assert_response :success
  end

  test "should get edit" do
    get edit_murid_url(@murid)
    assert_response :success
  end

  test "should update murid" do
    patch murid_url(@murid), params: { murid: { alamat: @murid.alamat, kelas: @murid.kelas, lecture_id: @murid.lecture_id, major_id: @murid.major_id, nama: @murid.nama, nim: @murid.nim } }
    assert_redirected_to murid_url(@murid)
  end

  test "should destroy murid" do
    assert_difference('Murid.count', -1) do
      delete murid_url(@murid)
    end

    assert_redirected_to murids_url
  end
end
