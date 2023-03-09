require "application_system_test_case"

class AnnoncesTest < ApplicationSystemTestCase
  setup do
    @annonce = annonces(:one)
  end

  test "visiting the index" do
    visit annonces_url
    assert_selector "h1", text: "Annonces"
  end

  test "should create annonce" do
    visit annonces_url
    click_on "New annonce"

    fill_in "Content", with: @annonce.content
    fill_in "Title", with: @annonce.title
    fill_in "User", with: @annonce.user_id
    click_on "Create Annonce"

    assert_text "Annonce was successfully created"
    click_on "Back"
  end

  test "should update Annonce" do
    visit annonce_url(@annonce)
    click_on "Edit this annonce", match: :first

    fill_in "Content", with: @annonce.content
    fill_in "Title", with: @annonce.title
    fill_in "User", with: @annonce.user_id
    click_on "Update Annonce"

    assert_text "Annonce was successfully updated"
    click_on "Back"
  end

  test "should destroy Annonce" do
    visit annonce_url(@annonce)
    click_on "Destroy this annonce", match: :first

    assert_text "Annonce was successfully destroyed"
  end
end
