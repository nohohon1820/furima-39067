class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  # has_one    :order

  has_one_attached :image

  belongs_to :category
  belongs_to :condition
  belongs_to :charged
  belongs_to :prefecture
  belongs_to :shipping_day

  with_options presence: true do
    validates :image
    validates :name
    validates :introduction
    validates :category_id
    validates :condition_id
    validates :charged_id
    validates :prefecture_id
    validates :shipping_day_id
    validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, only_integer: true }
  end

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :condition_id
    validates :charged_id
    validates :prefecture_id
    validates :shipping_day_id
  end
end
