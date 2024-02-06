class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart, optional: true
  belongs_to :order, optional: true

  def self.add_product(product)
    line_product = LineItem.find_by(product_id: product.id)
    if line_product
      line_product.quantity += 1
    else
      line_product = new(product_id: product.id, price: product.price)
    end
    return line_product
  end
end
