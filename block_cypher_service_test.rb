require_relative 'block_cypher_service'
require 'test/unit'

# Test BlockCypherService
class TestBlockCypherService < Test::Unit::TestCase
  def setup
    @bc_test = BlockCypherService.new
  end

  def test_not_nil
    assert_not_nil(@bc_test)
  end

  def test_default_currency
    assert(@bc_test.instance_variable_get('@currency'), 'bcy')
  end

  def test_default_network
    assert(@bc_test.instance_variable_get('@network'), 'test')
  end

  def test_default_token
    assert(@bc_test.instance_variable_get('@api_token'), 'f559581fbebb412b9379cd5752bcae49')
  end

  def test_send_method_exists
    assert_respond_to(@bc_test, 'send', 'Must have a send method')
  end

  def test_send_method_raises_exceptions
    assert_raise(ArgumentError) { @bc_test.send }
    assert_raise(BlockCypher::Api::Error) { @bc_test.send('ABC', 'ABC') }
  end

  def test_send_method_returns_tx_ref
    response = @bc_test.send('C3qXd3YYRBrZZod5D9GLGhpDNnVfAwpbe2', 10_000_000)
    assert_not_nil(response['tx_ref'])
  end
end
