class MagiaController < ApplicationController
  before_action :set_magium, only: %i[ show edit update destroy ]

  # GET /magia or /magia.json
  def index
    @magia = Magium.all
  end

  # GET /magia/1 or /magia/1.json
  def show
  end

  # GET /magia/new
  def new
    @magium = Magium.new
  end

  # GET /magia/1/edit
  def edit
  end

  # POST /magia or /magia.json
  def create
    @magium = Magium.new(magium_params)

    respond_to do |format|
      if @magium.save
        format.html { redirect_to magium_url(@magium), notice: "Magium was successfully created." }
        format.json { render :show, status: :created, location: @magium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @magium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magia/1 or /magia/1.json
  def update
    respond_to do |format|
      if @magium.update(magium_params)
        format.html { redirect_to magium_url(@magium), notice: "Magium was successfully updated." }
        format.json { render :show, status: :ok, location: @magium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @magium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magia/1 or /magia/1.json
  def destroy
    @magium.destroy

    respond_to do |format|
      format.html { redirect_to magia_url, notice: "Magium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magium
      @magium = Magium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def magium_params
      params.require(:magium).permit(:nome, :tempo_cast, :descricao, :req)
    end
end
