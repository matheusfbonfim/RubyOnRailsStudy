class CoinsController < ApplicationController
  # Renderiza um template/layout específico para coins
  layout "adm"

  #################################################3
  # AFILTROS
  # Coloca uma ação do método set_coin antes de executar o show, edit, update e destroy
  # Proporciona reaproveitamento de código
  before_action :set_coin, only: %i[ show edit update destroy ]

  #################################################3
  # ACTIONS

  # GET /coins or /coins.json
  def index
    # Pega todas as moedas -> Banco de dados -> Tabela
    @coins = Coin.all # Coin -> Model Coin / Coin.all -> Array de elementos do banco de dados
    # Dispara na sequência o arquivo da view com o mesmo nome -> app/views/coins/index.html
  end

  # GET /coins/1 or /coins/1.json
  def show
  end

  # GET /coins/new
  def new
    @coin = Coin.new # Instanciando um model e jogando na variavel 
                     # Contem todos dados da moeda vazio
  end

  # GET /coins/1/edit
  def edit
  end

  # POST /coins or /coins.json
  def create
    # Coins params faz chegar somente os parametros necessários
    @coin = Coin.new(coin_params) # Cria uma nova moeda

    respond_to do |format|
      if @coin.save
        format.html { redirect_to coin_url(@coin), notice: "Coin was successfully created." }
        format.json { render :show, status: :created, location: @coin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coins/1 or /coins/1.json
  def update
    respond_to do |format|
      if @coin.update(coin_params)
        format.html { redirect_to coin_url(@coin), notice: "Coin was successfully updated." }
        format.json { render :show, status: :ok, location: @coin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coins/1 or /coins/1.json
  def destroy
    # O @coin nesse momento já esta selecionado devido ao set_coin
    # Posteriormente é destruído
    @coin.destroy

    # Format refere-se ao formato da url -> Ex: http://127.0.0.1:3000/coins.json
    # O respond_to é para responder para os formatos html e json
    respond_to do |format|
      format.html { redirect_to coins_url, notice: "Coin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coin
      @coin = Coin.find(params[:id])
      # puts "ENCONTRADO -> #{Coin.find(params[:id])}"
    end

    # Only allow a list of trusted parameters through.
    def coin_params
      # Parameters: {"authenticity_token"=>"[FILTERED]", "coin"=>{"description"=>"Dash", "acronym"=>"DASH", "url_image"=>"https://s2.coinmarketcap.com/static/img/coins/200x200/131.png"}, "commit"=>"Create Coin"}
      # Pega exatamente o coin - Pega exatamente os tres elementos
      # Traz segurança -> Evita ser enviado dados que não são necessários
      params.require(:coin).permit(:description, :acronym, :url_image, :mining_type_id) # Indica quais os campos para serem manipulados pelo controller
    end
end
