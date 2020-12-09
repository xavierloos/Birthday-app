require("capybara/rspec")
require("./app")

feature "index" do
  scenario "says hello" do
    visit "/"
    expect(page).to have_content "Hello there!"
  end
  scenario "asks for a name" do
    visit "/"
    expect(page).to have_content "What's your name?"
  end
  scenario "fills the name" do
    visit "/"
    fill_in("name", with: "Javi")
    click_on "Submit"
    expect(page).to have_content "Javi"
  end
  scenario "asks birthday" do
    visit "/"
    expect(page).to have_content "When's your birthday?"
  end
  scenario "fills the day" do
    visit "/"
    fill_in("day", with: 4)
    click_on "Submit"
    expect(page).to have_content 4
  end
  scenario "fills the month" do
    visit "/"
    fill_in("month", with: "Oct")
    click_on "Submit"
    expect(page).to have_content "Oct"
  end
end
