class Admin::DashboardController < ApplicationController
  def show
    @product = Product.sum(:quantity)
    @category = Product.count(:category_id)
  end
end
