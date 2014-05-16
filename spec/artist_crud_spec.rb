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

  scenario 'User can see a show page for the artist' do
    visit '/'
    click_on 'Add an Artist'
    fill_in 'artist[name]', with: 'Whitney Houston'
    fill_in 'artist[genre]', with: 'R&B'
    click_on 'Create Artist'
    click_on 'Whitney Houston'
    expect(page).to have_content('Whitney Houston')
    expect(page).to have_content('R&B')
  end

  scenario 'User can edit an artists name and genre' do
    visit '/'
    click_on 'Add an Artist'
    fill_in 'artist[name]', with: 'Whitney Houston'
    fill_in 'artist[genre]', with: 'R&B'
    click_on 'Create Artist'
    click_on 'Whitney Houston'
    click_on 'Edit'
    fill_in 'artist[name]', with: 'Micheal Jackson'
    fill_in 'artist[genre]', with: 'Pop'
    click_on 'Update Artist'
    expect(page).to have_content('Micheal Jackson')
    expect(page).to have_content('Pop')
  end

  scenario 'User can delete an Artist' do
    visit '/'
    click_on 'Add an Artist'
    fill_in 'artist[name]', with: 'Whitney Houston'
    fill_in 'artist[genre]', with: 'R&B'
    click_on 'Create Artist'
    click_on 'Whitney Houston'
    click_on 'Delete'
    expect(page).to_not have_content('Whitney Houston')
    expect(page).to_not have_content('Pop')
  end

end