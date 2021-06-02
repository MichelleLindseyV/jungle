require 'rails_helper'

RSpec.feature "Adds product to cart from homepage", type: :feature, js: true do
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name: Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They click product add button and cart increments by one" do

    visit root_path

    save_screenshot

    product_url[:1].click_on 'Add' 
    

    within('navbar') do
      expect(page).to have_content('My Cart (1)')
    end
  end
end
