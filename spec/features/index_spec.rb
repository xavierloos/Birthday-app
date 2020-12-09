require("capybara/rspec")
require("./app")

feature "index" do
  scenario "says hello" do
    visit "/"
    expect(page).to have_content "Hello there!"
  end
  scenario "has a form to fill" do
    visit "/"
    expect(page).to have_tag "form"
  end
  scenario "asks for a name" do
    visit "/"
    expect(page).to have_content "What's your name?"
  end
  scenario "asks birthday" do
    visit "/"
    expect(page).to have_content "When's your birthday?"
  end
end
