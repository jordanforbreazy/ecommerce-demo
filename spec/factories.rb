FactoryBot.define do
  factory :cart do
    subtotal {0}
    products_qty {0}
		status {'paid'}
		customer
	end
	
  factory :customer do
    first_name {'Jordan'}
    last_name  {'Minneti'}
    email      {'jkminneti@gmail.com'}
	end

	factory :product do
    name {'Test Product'}
    description {'Testing'}
		price {1000}
		qty {500}
	end
	
	factory :line_item do
		qty {1}
		product
		cart
  end
end