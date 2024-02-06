class Product < ApplicationRecord
  scope :order_by_title, -> {order(title: :asc) }
end
