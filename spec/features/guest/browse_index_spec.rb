require 'rails_helper'

feature 'Browse index page' do
  scenario 'user sees the cat creation' do
    visit '/'
    expect(page).to have_css('#cat-create')
  end
end
