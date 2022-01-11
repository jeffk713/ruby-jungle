require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "should not create a product with name of nil" do
      product = Product.new({
        name:  nil,
        description: 'testing description',
        quantity: 10,
        price_cents: 6499,
        category_id: 1
      })
      product.save
    
    puts product.errors.full_messages

    expect(product.errors.full_messages).not_to be_empty
    end

    it "should not create a product with quantity of nil" do
      product = Product.new({
        name:  'testing product',
        description: 'testing description',
        quantity: nil,
        price_cents: 6499,
        category_id: 1
      })
      product.save
    
    puts product.errors.full_messages

    expect(product.errors.full_messages).not_to be_empty
    end

    it "should not create a product with price of nil" do
      product = Product.new({
        name:  'testing product',
        description: 'testing description',
        quantity: 10,
        price_cents: nil,
        category_id: 1
      })
      product.save
    
    puts product.errors.full_messages

    expect(product.errors.full_messages).not_to be_empty
    end

    it "should not create a product with category_id of nil" do
      product = Product.new({
        name:  'testing product',
        description: 'testing description',
        quantity: 10,
        price_cents: 6499,
        category_id: nil
      })
      product.save
    
    puts product.errors.full_messages

    expect(product.errors.full_messages).not_to be_empty
    end

    it "should create a product with all valid fields" do
      product = Product.new({
        name:  'testing product',
        description: 'testing description',
        quantity: 10,
        price_cents: 6499,
        category_id: 1
      })
      product.save
    
    puts product.errors.full_messages

    expect(product.errors.full_messages).to be_empty
    end
  end
end
