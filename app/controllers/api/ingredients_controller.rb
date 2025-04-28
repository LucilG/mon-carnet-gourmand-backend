class Api::IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.order(created_at: :desc)

    render json: @ingredients
  end

  def show
    @ingredient = Ingredient.find(params[:id])

    render json: @ingredient
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save!
      # TO DO : vérifier l'option location:
      render json: @ingredient, status: :created, location: api_ingredients_url(@ingredient)
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end
end
