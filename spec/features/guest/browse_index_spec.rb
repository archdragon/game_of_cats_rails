require 'rails_helper'

feature 'user browses the main page as a guest' do
  scenario 'user sees the cat creation' do
    visit '/'
    expect(page).to have_css('#cat-create')
  end
end
