require 'spec_helper'

feature 'User can CRUD artists' do
  scenario 'User can create an artist' do
    visit '/'
    click_on 'Add an Artist'
    fill_in 'artist[name]', with: 'Whitney Houston'
    fill_in 'artist[genre]', with: 'R&B'
    click_on 'Create Artist'
    expect(page).to have_content('Whitney Houston')
    expect(page).to have_content('R&B')
  end
end