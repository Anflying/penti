class HomeController < ApplicationController
  def index
    @articles_one = Article.where(["category_id=?", "#{Category.first.id}"]).paginate(page: params[:page], per_page: 30)
    @articles_two = Article.where(["category_id=?", "#{Category.second.id}"]).paginate(page: params[:page], per_page: 30)
  end

  def first_tag
    @articles_one = Article.where(["category_id=?", "#{Category.first.id}"]).paginate(page: params[:page], per_page: 50)
  end

  def second_tag
    @articles_two = Article.where(["category_id=?", "#{Category.second.id}"]).paginate(page: params[:page], per_page: 50)
  end
end
