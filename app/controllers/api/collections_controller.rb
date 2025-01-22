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
end
