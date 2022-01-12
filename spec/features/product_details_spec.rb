require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature do
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

    scenario "They can view product detail" do
      visit root_path
  
      first('footer.actions a.btn').click
      expect(page).to have_css('section.products-show')
      
    end
end
