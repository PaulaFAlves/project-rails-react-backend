class EspeciesController < ApplicationController
  before_action :set_especy, only: [:show, :update, :destroy]

  # GET /especies
  def index
    @especies = Especy.all

    render json: @especies
  end

  # GET /especies/1
  def show
    render json: @especy
  end

  # POST /especies
  def create
    @especy = Especy.new(especy_params)

    if @especy.save
      render json: @especy, status: :created, location: @especy
    else
      render json: @especy.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /especies/1
  def update
    if @especy.update(especy_params)
      render json: @especy
    else
      render json: @especy.errors, status: :unprocessable_entity
    end
  end

  # DELETE /especies/1
  def destroy
    @especy.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especy
      @especy = Especy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def especy_params
      params.require(:especy).permit(:nome)
    end
end
