class MoedasController < ApplicationController

  before_action :set_moeda, only: %i[ show edit update destroy ]
  before_action :set_tipos_mineracao, only: %i[new create edit update]
  #before_action :authorize

  # GET /moedas or /moedas.json
  def index
    @moedas = Moeda.all.paginate(:page => params[:page], :per_page => 02)
  end

  # GET /moedas/1 or /moedas/1.json
  def show
  end

  # GET /moedas/new
  def new
    @moeda = Moeda.new
  end

  # GET /moedas/1/edit
  def edit
  end

  # POST /moedas or /moedas.json
  def create
    @moeda = Moeda.new(moeda_params)

    respond_to do |format|
      if @moeda.save
        format.html { redirect_to moeda_url(@moeda), notice: "Moeda cadastrada com sucesso." }
        format.json { render :show, status: :created, location: @moeda }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @moeda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moedas/1 or /moedas/1.json
  def update
    respond_to do |format|
      if @moeda.update(moeda_params)
        format.html { redirect_to moeda_url(@moeda), notice: "Moeda atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @moeda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @moeda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moedas/1 or /moedas/1.json
  def destroy
    @moeda.destroy

    respond_to do |format|
      format.html { redirect_to moedas_url, notice: "Moeda deletada com sucesso." }
      format.json { head :no_content }
    end
  end

  private

    def set_tipos_mineracao 
      @set_tipos_mineracao = TipoMineracao.all.pluck(:nome, :id)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_moeda
      @moeda = Moeda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def moeda_params
      params.require(:moeda).permit(:nome, :sigla, :imagem, :tipo_mineracao_id)
    end
end
