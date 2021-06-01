require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    before :each do
      @user = described_class.new(
        first_name: 'John',
        last_name: 'Davis',
        email: 'jd@example.com',
        password: 'abcdef',
        password_confirmation: 'abcdef'
      )
    end

    it 'is valid when all properties are present' do
        expect(@user).to be_valid
    end

    it 'is not vaild if passwords do not match' do
      @user.password_confirmation = 'ghtyu'
      expect(@user.password).to_not eq(@user.password_confirmation)
    end

    it "is not valid if email already exists" do
      @user.email = 'jd@example.com'
      expect(@user.email).to exist
    end

  describe '.authenticate_with_credentials' do

  end

end
end
