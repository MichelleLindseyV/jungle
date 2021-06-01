require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    before :each do
      @product = described_class.new(
        name: 'John',
        price: 50,
        quantity: 10,
        category: Category.new(
          name: 'Shoes'
        )
      )
    end

    it 'is valid when all properties are present' do
      expect(@product).to be_valid
    end

    it "is not valid if name is not present" do
      @product.name = nil
      expect(@product).to be_invalid
    end

    it "is not valid if price is not present" do
      @product.price = nil
      expect(@product).to be_invalid
    end

    it "is not valid if quantity is not present" do
      @product.quantity = nil
      expect(@product).to be_invalid
    end

    it "is not valid if category is not present" do
      @product.category = nil
      expect(@product).to be_invalid
    end
  end
end
