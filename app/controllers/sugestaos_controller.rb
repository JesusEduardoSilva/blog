class SugestaosController < ApplicationController
  before_action :set_sugestao, only: [:show, :edit, :update, :destroy]

  # GET /sugestaos
  # GET /sugestaos.json
  def index
    @sugestaos = Sugestao.all
  end

  # GET /sugestaos/1
  # GET /sugestaos/1.json
  def show
  end

  # GET /sugestaos/new
  def new
    @sugestao = Sugestao.new
  end

  # GET /sugestaos/1/pegar_imagem
  def pegar_imagem
    produto = Produto.find(params[:id_produto])
    render html: ApplicationController.helpers.asset_url(produto.cover.url(:medium))
  end

  # GET /sugestaos/1/edit
  def edit
  end

  # POST /sugestaos
  # POST /sugestaos.json
  def create
    @sugestao = Sugestao.new(sugestao_params)

    respond_to do |format|
      if @sugestao.save
        format.html { redirect_to @sugestao, notice: 'Sugestão salva com sucesso.' }
        format.json { render :show, status: :created, location: @sugestao }
      else
        format.html { render :new }
        format.json { render json: @sugestao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sugestaos/1
  # PATCH/PUT /sugestaos/1.json
  def update
    respond_to do |format|
      if @sugestao.update(sugestao_params)
        format.html { redirect_to @sugestao, notice: 'Sugestão alterada com sucesso.' }
        format.json { render :show, status: :ok, location: @sugestao }
      else
        format.html { render :edit }
        format.json { render json: @sugestao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sugestaos/1
  # DELETE /sugestaos/1.json
  def destroy
    @sugestao.destroy
    respond_to do |format|
      format.html { redirect_to sugestaos_url, notice: 'Sugestão excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sugestao
      @sugestao = Sugestao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sugestao_params
      params.require(:sugestao).permit(:usuario_id, :produto_id, :descricao)
    end
end
