class HomeController < ApplicationController

  def index
    @articles = Article.all
  end

  def blog
    @article = Article.find(params[:id])
  end

end
