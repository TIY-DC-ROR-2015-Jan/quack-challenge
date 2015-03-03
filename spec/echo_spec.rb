require 'rails_helper'

# This is an rspec test. It is similar to a minitest except
# * you have `feature` or `describe` blocks to group tests (instead of a class)
# * you have `it` blocks instead of `def test_...` for individual tests
feature "Repeating" do
  it "echos what the user types" do
    # This uses `capybara` to "visit" the page
    visit root_path

    # At any point from here on you could `binding.pry` and inspect `page`
    # Or call `save_and_open_page` to see the HTML directly

    # This will look for an input either with name 'phrase' or with
    #   an associated label with text 'phrase'. For now, giving it `name='phrase'`
    #   should be easiest
    fill_in "phrase", with: "Quack"
    click_button "Repeat"

    # This is analogous to `assert page.content.includes? "Quack"`
    expect(page).to have_content "Quack"
  end
end
