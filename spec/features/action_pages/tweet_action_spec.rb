require "rails_helper"

RSpec.feature "Tweet actions", type: :feature, js: true do
  let!(:tweet_action) do
    FactoryGirl.create(:tweet).action_page
  end
  before do
    #login FactoryGirl.create(:user)
  end

  it "allows logged-in users to tweet" do
    visit "/"
    visit action_page_path(tweet_action)

    expect(page).to have_content(tweet_action.title)
  end
end
