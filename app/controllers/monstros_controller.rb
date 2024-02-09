class MonstrosController < ApplicationController
  before_action :set_monstro, only: %i[ show edit update destroy ]

  # GET /monstros or /monstros.json
  def index
    @monstros = Monstro.all
  end

  # GET /monstros/1 or /monstros/1.json
  def show
  end

  # GET /monstros/new
  def new
    @monstro = Monstro.new
  end

  # GET /monstros/1/edit
  def edit
  end

  # POST /monstros or /monstros.json
  def create
    @monstro = Monstro.new(monstro_params)

    respond_to do |format|
      if @monstro.save
        format.html { redirect_to monstro_url(@monstro), notice: "Monstro was successfully created." }
        format.json { render :show, status: :created, location: @monstro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monstro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monstros/1 or /monstros/1.json
  def update
    respond_to do |format|
      if @monstro.update(monstro_params)
        format.html { redirect_to monstro_url(@monstro), notice: "Monstro was successfully updated." }
        format.json { render :show, status: :ok, location: @monstro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monstro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monstros/1 or /monstros/1.json
  def destroy
    @monstro.destroy

    respond_to do |format|
      format.html { redirect_to monstros_url, notice: "Monstro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monstro
      @monstro = Monstro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monstro_params
      params.require(:monstro).permit(:nome, :tamtype, :armor, :life, :des, :for, :dez, :con, :inte, :sab, :car, :st, :skills, :resis, :sense, :lan, :cr, :hab, :leng_res, :leng_skills, :actions)
    end
end
