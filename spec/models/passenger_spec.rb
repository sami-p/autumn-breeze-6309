require 'rails_helper'

RSpec.describe Passenger do
  describe 'relationships' do
    it { should have_many(:boarding_passengers) }
    it { should have_many(:flights).through(:boarding_passengers) }
  end
end
