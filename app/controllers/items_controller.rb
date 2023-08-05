class ItemsController < ApplicationController
  def index
    @item = Item.includes(:user).order('created_at DESC')
  end
end
