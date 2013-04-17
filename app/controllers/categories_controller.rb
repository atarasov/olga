class CategoriesController < ApplicationController
  before_filter :find_titles
  def index
    @items = Item.paginate(:page => params[:page])
  end

  def show
    @items = Item.where(:category_id => params[:id]).paginate(:page => params[:page])
  end

  def find_titles
    @categories = Category.all
    @category = Category.find(params[:id]) if params[:id]
  end
end
