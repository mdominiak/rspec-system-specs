require 'rails_helper'

describe 'Home page' do
  before do
    driven_by :selenium_chrome_headless
  end

  it 'shows greeting' do
    visit root_url
    expect(page).to have_content 'Hello World'
  end
end
