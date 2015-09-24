require "test_helper"

feature "Edit A Profile" do
  scenario "submit updates to an existing profile" do
    sign_in(:player_1)
    visit profile_path(profiles(:player_1_profile))
    click_on "Edit"
    fill_in "Name", with: "Stefan Frei"
    click_on "Update Profile"
    page.must_have_content "Profile was successfully updated"
    page.must_have_content "Stefan Frei"
  end
end
