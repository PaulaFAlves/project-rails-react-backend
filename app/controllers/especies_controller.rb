class EspeciesController < ApplicationController
  before_action :set_especie, only: [:show, :update, :destroy]

  # GET /especies
  def index
    @especies = Especie.all

    render json: @especies
  end

  # GET /especies/1
  def show
    render json: @especie
  end

  # POST /especies
  def create
    @especie = Especie.new(especie_params)

    if @especie.save
      render json: @especie, status: :created, location: @especie
    else
      render json: @especie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /especies/1
  def update
    if @especie.update(especie_params)
      render json: @especie
    else
      render json: @especie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /especies/1
  def destroy
    @especie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especie
      @especie = Especie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def especie_params
      params.require(:especie).permit(:nome)
    end
end
