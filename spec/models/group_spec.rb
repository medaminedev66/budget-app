require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create(name: 'Amine', email: 'example@mail.com', password: 'password') }
  let(:group) { Group.create(user_id: user.id, name: 'Apple', icon: '') }

  describe 'Validations' do
    context 'when valid' do
      it { expect(group).to be_valid }
    end

    it 'should allow valid name' do
      group.name = nil
      expect(group).to_not be_valid
    end

    it 'should allow valid name' do
      group.name = 'Trade'
      expect(group).to be_valid
    end
  end
end
