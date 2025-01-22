class Api::RecipesController < ApplicationController
  def home
  end

  def index
    # @recipes = Recipe.all
    @recipes = Recipe.order(created_at: :desc)

    render json: @recipes
  end

  def show
    @recipe = Recipe.find(params[:id])

    render json: @recipe
  end
end
