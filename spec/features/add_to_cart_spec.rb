require 'rails_helper'

RSpec.feature "AddProductToCart", type: :feature do
    # SETUP
    before :each do
      @category = Category.create! name: 'Apparel'
  
      10.times do |n|
        @category.products.create!(
          name:  Faker::Hipster.sentence(3),
          description: Faker::Hipster.paragraph(4),
          image: open_asset('apparel1.jpg'),
          quantity: 10,
          price: 64.99
        )
      end
    end

    scenario "They can add a product to cart" do
      visit root_path
  
      first('footer.actions button[type=submit]').click
      expect(page).to have_content('(1)')
      
    end
end
