require "rails_helper"

RSpec.describe "___ Page Spec" do
  before :each do
    # @items = create_list(:item, 5)
  end

  describe "As a user" do
    describe "on the root path page" do
      it "I can search for a poet" do
        visit "/"
        fill_in :author, with: "Emily"
        click_on "Get Poems"

        expect(current_path).to eq "/search"

        within ".poems" do
          expect(page).to have_selector(".poem", count: 10)
        end

        first_poem = find(".poem", match: :first)
        within first_poem do
          expect(page).to have_selector(".poem-title")
          expect(page).to have_selector(".poem-author")
          expect(page).to have_selector(".poem-text")
          expect(page).to have_selector(".poem-tone")
        end
      end
    end
  end
end
