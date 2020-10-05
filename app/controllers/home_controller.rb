class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
    @blogs = Blog.all
  end
  def recipes
    @recipes = Recipe.all
  end
  def blogs
    @blogs = Blog.all
  end    
end
