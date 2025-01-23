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

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save!
      # TO DO : vérifier l'option location:
      render json: @recipe, status: :created, location: api_recipes_url(@recipe)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :nb_people, :prepa_time, :cooking_time, :instructions, :collection_id)
  end
end
