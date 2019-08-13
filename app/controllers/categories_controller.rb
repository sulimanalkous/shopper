class CategoriesController < ApplicationController
  
  def index
    @categories = Category.joins(:products).select('categories.*, count(products.id) AS products_count').group('categories.id').order(:title)
  end
end
