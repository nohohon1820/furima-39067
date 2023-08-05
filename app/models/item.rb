class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :user
  has_one    :order

  has_one_attached :image

  belongs_to :category
  belongs_to :condition
  belongs_to :charged
  belongs_to :prefecture
  belongs_to :shipping_day

end
