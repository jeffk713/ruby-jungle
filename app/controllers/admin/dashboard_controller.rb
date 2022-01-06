class Admin::DashboardController < ApplicationController
  def show
    @product_count = Product.all.map(&:quantity).inject(0, :+)
    @category_count = Category.all.count
  end
end
