require 'blockcypher'

# BlockCypherService encapsulates BlockCypher::Api
class BlockCypherService < BlockCypher::Api
  CURRENCY = BlockCypher::BCY
  NETWORK = BlockCypher::TEST_NET
  API_TOKEN = 'f559581fbebb412b9379cd5752bcae49'.freeze

  def initialize(currency = CURRENCY, network = NETWORK, api_token = API_TOKEN)
    super(currency: currency, network: network, api_token: api_token)
  end

  def send(address, amount)
    faucet(address, amount)
  end
end
