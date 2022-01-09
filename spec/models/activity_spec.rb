require 'rails_helper'

RSpec.describe Activity, type: :model do
  let(:user) { User.create(name: 'Amine', email: 'example@mail.com', password: 'password') }
  let(:activity) { Activity.create(author_id: user.id, name: 'Buy', amount: 18) }

  describe 'Validations' do
    context 'when valid' do
      it { expect(activity).to be_valid }
    end

    it 'should allow valid name' do
      activity.name = nil
      expect(activity).to_not be_valid
    end

    it 'should allow valid name' do
      activity.name = 'Sell'
      expect(activity).to be_valid
    end

    it 'should validate amount' do
      activity.amount = -10
      expect(activity).to_not be_valid
    end

    it 'should validate amount' do
      activity.amount = 19.5
      expect(activity).to be_valid
    end
  end
end
