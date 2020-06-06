class PropriedadesController < ApplicationController
  before_action :set_propriedade, only: [:show, :update, :destroy]

  # GET /propriedades
  def index
    @propriedades = Propriedade.all

    render json: @propriedades
  end

  # GET /propriedades/1
  def show
    render json: @propriedade
  end

  # POST /propriedades
  def create
    @propriedade = Propriedade.new(propriedade_params)

    if @propriedade.save
      render json: @propriedade, status: :created, location: @propriedade
    else
      render json: @propriedade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /propriedades/1
  def update
    if @propriedade.update(propriedade_params)
      render json: @propriedade
    else
      render json: @propriedade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /propriedades/1
  def destroy
    @propriedade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propriedade
      @propriedade = Propriedade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def propriedade_params
      params.require(:propriedade).permit(:nome, :especie, :cultivar, :area, :unidade)
    end
end
