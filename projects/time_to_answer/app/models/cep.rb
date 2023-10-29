require 'net/http'

class CEP
  attr_reader :logradouro, :bairro, :localidade, :uf

  def initialize(cep)
    address_hash = get_cep(cep)

    set_address(address_hash)
  end

  def address
    "#{@logradouro}, #{@bairro}, #{@localidade} - #{@uf}"
  end

  private

  def get_cep(cep)
    ActiveSupport::JSON.decode(
      Net::HTTP.get(
        URI.parse("http://viacep.com.br/ws/#{cep}/json/")
      )
    )
  end

  def set_address(address_hash)
    @logradouro  = address_hash["logradouro"]
    @bairro      = address_hash["bairro"]
    @localidade  = address_hash["localidade"]
    @uf          = address_hash["uf"]
  end
end