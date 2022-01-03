require 'rails_helper'

RSpec.describe Assignment, type: :model do
  let(:user) { User.create(name: 'Amine', email: 'example@mail.com', password: 'password') }
  let(:activity) { Activity.create(author_id: user.id, name: 'Buy', amount: 18) }
  let(:group) { Group.create(user_id: user.id, name: 'Apple', icon: "") }

  let(:assignment) { Assignment.create(activity_id: activity.id, group_id: group.id)}

  describe 'Validations' do
    context 'when valid' do
      it { expect(assignment).to be_valid }
    end
  end
end
