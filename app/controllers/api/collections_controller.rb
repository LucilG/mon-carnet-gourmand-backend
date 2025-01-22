class Api::CollectionsController < ApplicationController
  def index
    # @collections = Collection.all
    @collections = Collection.order(created_at: :desc)

    render json: @collections
  end

  def show
    @collection = Collection.find(params[:id])

    render json: @collection
  end

  def create
    @collection = Collection.new(collection_params)
    if @collection.save!
      # TO DO : vérifier l'option location:
      render json: @collection, status: :created, location: api_collections_url(@collection)
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  private

  def collection_params
    params.require(:collection).permit(:name)
  end
end
