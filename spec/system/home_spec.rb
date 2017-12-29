require 'rails_helper'

describe 'Homepage' do
  before do
    driven_by :selenium_chrome_headless
    puts 'Planet.create!'
    Planet.create!(name: 'Mars')
  end

  it 'shows greeting' do
    visit root_url
    expect(page).to have_content 'Hello Universe'
  end

  it 'shows planet count' do
    visit root_url
    expect(page).to have_content 'Planet count: 1'
  end
end
