require 'rails_helper'

RSpec.feature 'User Index', type: :feature do
  before(:each) do
    visit root_path
  end

  it 'user can see the log in link' do
    click_link('log-in')
    expect(page).to have_current_path(new_user_session_path)
  end

  it 'user can see the log in link' do
    click_link('sign-up')
    expect(page).to have_current_path(new_user_registration_path)
  end
end
