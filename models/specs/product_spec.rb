require('minitest/autorun')
require('minitest/rg')
require_relative('../product')

class ProductTest < MiniTest::Test

  def setup
    options1 = {'name'=> 'YummyCoffeeCo', 'address'=> '123 Fake Street'}
    @producer1 = Producer.new(options1)

    options = {'name' => 'Colombian Supremo',
               'producer_id' => 1,
               'origin' => 'Colombia',
               'roast' => 'Dark',
               'blend' => 'Arabica',
               'type' => 'Whole Bean',
               'weight' => 500,
               'unit_cost' => 5,
               'sell_price' => 6,
               'units_in_stock' => 10,
               'optimal_stock' => 20
             }
    @product1 = Product.new(options)
  end

  def test_product_name
    assert_equal('Colombian Supremo',@product1.name)
  end

  def test_product_producer_id
    assert_equal(1, @product1.producer_id)
  end

  def test_stock_item_producer
    assert_equal('YummyCoffeeCo', @product1.producer)
  end

  def test_product_origin
    assert_equal('Colombia', @product1.origin)
  end

  def test_product_roast
    assert_equal('Dark', @product1.roast)
  end

  def test_product_blend
    assert_equal('Arabica', @product1.blend)
  end

  def test_product_type
    assert_equal('Whole Bean', @product1.type)
  end

  def test_product_weight
    assert_equal(500, @product1.weight)
  end

  def test_product_unit_cost
    assert_equal(5, @product1.unit_cost)
  end

  def test_product_sell_price
    assert_equal(6, @product1.sell_price)
  end

  def test_product_markup
    assert_equal(1, @product1.markup)
  end

  def test_product_markup_percentage
    assert_equal(0.2, @product1.markup_percentage)
  end

  def test_stock_item_units_in_stock
    assert_equal(10, @product1.units_in_stock)
  end

  def test_stock_item_optimal_stock
    assert_equal(20, @product1.optimal_stock)
  end

  def test_product_in_stock__not_in_stock
    @product1.units_in_stock = 0
    assert_equal(false, @product1.in_stock?)
  end

  def test_product_in_stock__is_in_stock
    assert_equal(true, @product1.in_stock?)
  end

  def test_product_low_stock__stock_low
    @product1.units_in_stock = 2
    assert_equal(true, @product1.low_stock?)
  end

  def test_product_low_stock__stock_sufficient
    assert_equal(false, @product1.low_stock?)
  end

end
