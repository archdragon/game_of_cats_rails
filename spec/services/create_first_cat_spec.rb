require 'rails_helper'

RSpec.describe CreateFirstCatService do
  describe 'self.prepare_hobbies' do
    subject(:hobbies) { CreateFirstCatService.get_random_hobbies }
    it "Returns an array" do
      expect(hobbies).to be_a(Array)
    end
    it "Contains 3 elements" do
      expect(hobbies.count).to eq(3)
    end
  end

  describe 'self.call!' do
    context "with persisted user" do
      before do
        @user = create(:user)
        allow(@user).to receive_messages(:persisted? => true)
      end
      it "creates a cat" do
        expect{CreateFirstCatService.call!(user: @user, cat_params: {})}.to change{UserCat.count}.by(1)
      end
    end
  end
end