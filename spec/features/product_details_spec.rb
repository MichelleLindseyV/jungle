require 'rails_helper'

RSpec.feature "Visitor navigates to a product details page", type: :feature, js: true do
  
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

  scenario "They are brought to product partial page" do
    visit product_path(:id => "1")

    save_screenshot
    
  end
end
