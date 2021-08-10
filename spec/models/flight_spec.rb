require 'rails_helper'

RSpec.describe Flight do
  describe 'relationships' do
    it { should belong_to(:airline) }
    it { should have_many(:boarding_passengers) }
    it { should have_many(:passengers).through(:boarding_passengers) }
  end
end
