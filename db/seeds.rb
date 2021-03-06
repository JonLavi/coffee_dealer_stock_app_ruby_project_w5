require_relative('../models/producer')
require_relative('../models/product')
require_relative('../models/blend')
require_relative('../models/origin')
require_relative('../models/roast')
require_relative('../models/type')

Product.delete_all()
Producer.delete_all()
Blend.delete_all()
Origin.delete_all()
Roast.delete_all()
Type.delete_all()

blend1 = Blend.new({'name' => 'Arabica'})
blend1.save()
blend2 = Blend.new({'name' => 'Robusta'})
blend2.save()

origin1 = Origin.new({'name' => 'Kenya'})
origin1.save()
origin2 = Origin.new({'name' => 'Columbia'})
origin2.save()

roast1 = Roast.new({'name' => 'Dark'})
roast1.save()
roast2 = Roast.new({'name' => 'Medium'})
roast2.save()
roast3 = Roast.new({'name' => 'Light'})
roast3.save()

type1 = Type.new({'name' => 'Espresso'})
type1.save()
type2 = Type.new({'name' => 'Filter'})
type2.save()

producer1 = Producer.new({
  'name' => 'YummyCoffeeCo',
  'address' => '123 Fake Street'})
producer1.save()

producer2 = Producer.new({
  'name' => 'WiredBrew',
  'address' => '456 Fake Street'})
producer2.save()

product1 = Product.new({'name' => 'Colombian Supremo',
           'producer_id' => producer1.id,
           'origin_id' => origin2.id,
           'roast_id' => roast2.id,
           'blend_id' => blend2.id,
           'type_id' => type2.id,
           'weight' => 500,
           'unit_cost' => 5,
           'sell_price' => 6,
           'units_in_stock' => 10,
           'optimal_stock' => 20
         })
product1.save()

product2 = Product.new({'name' => 'Kickass Kenyan',
           'producer_id' => producer2.id,
           'origin_id' => origin1.id,
           'roast_id' => roast1.id,
           'blend_id' => blend1.id,
           'type_id' => type1.id,
           'weight' => 500,
           'unit_cost' => 4,
           'sell_price' => 5,
           'units_in_stock' => 15,
           'optimal_stock' => 30
           })
product2.save()
