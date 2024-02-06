class StoreController < ApplicationController
  def index
    @products = Product.order_by_title
  end
end
