class CultivaresController < ApplicationController
  before_action :set_cultivare, only: [:show, :update, :destroy]

  # GET /cultivares
  def index
    @cultivares = Cultivare.all

    render json: @cultivares
  end

  # GET /cultivares/1
  def show
    render json: @cultivare
  end

  # POST /cultivares
  def create
    @cultivare = Cultivare.new(cultivare_params)

    if @cultivare.save
      render json: @cultivare, status: :created, location: @cultivare
    else
      render json: @cultivare.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cultivares/1
  def update
    if @cultivare.update(cultivare_params)
      render json: @cultivare
    else
      render json: @cultivare.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cultivares/1
  def destroy
    @cultivare.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cultivare
      @cultivare = Cultivare.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cultivare_params
      params.require(:cultivare).permit(:nome, :especie_id)
    end
end
