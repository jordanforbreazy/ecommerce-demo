ActiveRecord::Base.connection.execute("TRUNCATE TABLE orders RESTART IDENTITY")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE customers RESTART IDENTITY")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE products RESTART IDENTITY")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE line_items RESTART IDENTITY")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE carts RESTART IDENTITY")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE charges RESTART IDENTITY")
Customer.create!([
	{ first_name: 'Jordan',
		last_name: 'Minneti',
		email: 'jkminneti@gmail.com'
	}, 
	{ first_name: 'Wade',
		last_name: 'Wilson',
		email: 'wadewilson@DCcomics.com' #(jk)
	}, 
	{ first_name: 'Bade',
		last_name: 'Bilson',
		email: 'theonewiththedisputes@gmail.com'
	}
])

Product.create!([
	{ name: 'Two Whole Ninja',
		description: 'One more than one ninja',
		price: 8700,
		qty: 500
	},
	{ name: 'Bork',
		description: 'I shoulda used FakerRails',
		price: 1700,
		qty: 810
	},
	{ name: 'Bork 2.0',
		description: 'Much rare',
		price: 1750,
		qty: 42,
	},
	{ name: 'Triplet Ninja',
		description: 'Practically an army',
		price: 9500,
		qty: 427
	}
])


[['paid', 1], ['paid', 2], ['paid', 2], ['paid', 3], 
	['paid', 3], ['paid', 3], ['paid', 1], 
	['created', 3], ['created', 3], ['created', 3]].each do |data|
	new_cart = Cart.new({subtotal: 0, products_qty: 0, status: data[0]})
	new_cart.customer = Customer.find(data[1])
	new_cart.save!
end

[[3, 1, 1], [4, 1, 2], [2, 2, 3], [1, 2, 4], [2, 3, 1], [3, 4, 2], [5, 5, 3], [2, 6, 1], [1, 6, 2], [3, 7, 3], [4,8,4],[2, 9,3],[1, 10,1]].each do |data|
	new_line = LineItem.new({qty: data[0]})
	new_line.cart = Cart.find(data[1])
	new_line.product = Product.find(data[2])
	new_line.save!
end

[[1, 1], [2, 2], [2, 3], [3, 4]].each do |data|
	new_order = Order.new({total: 0, tax: 0, status: 'delivered'})
	new_order.customer = Customer.find(data[0])
	new_order.cart = Cart.find(data[1])
	new_order.save!
end

[[3, 5], [3, 6], [1,7], [3,8], [3,9], [3,10]].each do |data|
	new_order = Order.new({total: 0, tax: 0, status: 'paid'})
	new_order.customer = Customer.find(data[0])
	new_order.cart = Cart.find(data[1])
	new_order.save!
end

8.times do |i|
	next if i == 0
	new_charge = Charge.create({paid: true, amount: 0, refunded: false, disputed: false})
	new_charge.order = Order.find(i)
	new_charge.save!
end

[8, 9, 10].each do |i|
	new_charge = Charge.create({paid: true, amount: 0, refunded: false, disputed: true})
	new_charge.order = Order.find(i)
	new_charge.save!
end