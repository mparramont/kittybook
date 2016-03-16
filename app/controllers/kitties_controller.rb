class KittiesController < ApplicationController
  before_action :set_kitty, only: [:show, :update, :destroy]

  # GET /kitties
  def index
    @kitties = Kitty.all

    render json: @kitties
  end

  # GET /kitties/1
  def show
    render json: @kitty
  end

  # POST /kitties
  def create
    @kitty = Kitty.new(kitty_params)

    if @kitty.save
      render json: @kitty, status: :created, location: @kitty
    else
      render json: @kitty.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kitties/1
  def update
    if @kitty.update(kitty_params)
      render json: @kitty
    else
      render json: @kitty.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kitties/1
  def destroy
    @kitty.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitty
      @kitty = Kitty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kitty_params
      params.require(:kitty).permit(:name, :birthday, :owner_id)
    end
end
