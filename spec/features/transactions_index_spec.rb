require 'rails_helper'

RSpec.feature 'Transactions Index', type: :feature do
  before(:each) do
    @user = User.create(name: 'Testing', email: 'user@example.com', password: 'password')
    @group = Group.create(user: @user, name: 'Amazon', icon: 'icon_url.png')
    @first_activity = Activity.create(author_id: @user.id, name: 'Product', amount: 13, group_ids: @group.id)
    @second_activity = Activity.create(author_id: @user.id, name: 'Mouse', amount: 20, group_ids: @group.id)
    visit groups_path
    fill_in 'email', with: 'user@example.com'
    fill_in 'pwd', with: 'password'
    click_button 'Log in'
    visit activities_home_path(@group)
  end

  it 'shows the transactions page' do
    expect(page).to have_content 'Transactions'
  end

  it 'shows the details of the group' do
    expect(page).to have_content 'Deserunt rerum nisi dolorem! Iure, dolorum iste debitis'
  end

  it 'shows the name of the group' do
    expect(page).to have_content 'Amazon'
  end

  it 'shows the name of transactions' do
    expect(page).to have_content @first_activity.name
  end

  it 'shows the total amount of the group' do
    expect(page).to have_content '$13'
  end

  it 'shows the total ammount of the group' do
    expect(page).to have_content '$33'
  end
end
