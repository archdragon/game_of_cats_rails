require 'rails_helper'

RSpec.describe CreateFirstCatService do
  describe 'self.prepare_hobbies' do
    subject(:hobbies) { CreateFirstCatService.get_random_hobbies }
    it "Returns an array" do
      expect(hobbies).to be_a(Hash)
    end
    it "Contains 3 elements" do
      expect(hobbies.count).to eq(3)
    end
  end
end