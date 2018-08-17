Customer.create([
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

Product.create([
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

Cart.create([
	# DELIVERED status
	# 1
	{ subtotal: 0,
		products_qty: 0,
		status: 'paid',
		customer_id: 1
	},
	# 2
	{ subtotal: 0,
		products_qty: 0,
		status: 'paid',
		customer_id: 2
	},
	# 3
	{ subtotal: 0,
		products_qty: 0,
		status: 'paid',
		customer_id: 2
	},
	# 4
	{ subtotal: 0,
		products_qty: 0,
		status: 'paid',
		customer_id: 3
	},
	# Paid but not Delivered
	# 5
	{ subtotal: 0,
		products_qty: 0,
		status: 'paid',
		customer_id: 3
	},
	# 6
	{ subtotal: 0,
		products_qty: 0,
		status: 'paid',
		customer_id: 3
	},
	# 7
	{ subtotal: 0,
		products_qty: 0,
		status: 'paid',
		customer_id: 1
	},
	# DISPUTES
	# 8
	{ subtotal: 0,
		products_qty: 0,
		status: 'created',
		customer_id: 3
	},
	# 9
	{ subtotal: 0,
		products_qty: 0,
		status: 'created',
		customer_id: 3
	},
	# 10
	{ subtotal: 0,
		products_qty: 0,
		status: 'created',
		customer_id: 3
	}
])

LineItem.create([
	{ cart_id: 1,
		product_id: 1,
		qty: 3
	},
	{ cart_id: 1,
		product_id: 2,
		qty: 4
	},
	{ cart_id: 2,
		product_id: 3,
		qty: 1
	},
	{ cart_id: 2,
		product_id: 4,
		qty: 2
	},
	{ cart_id: 3,
		product_id: 1,
		qty: 4
	},
	{ cart_id: 4,
		product_id: 2,
		qty: 3
	},
	{ cart_id: 5,
		product_id: 3,
		qty: 2
	},
	{ cart_id: 6,
		product_id: 1,
		qty: 1
	},
	{ cart_id: 6,
		product_id: 2,
		qty: 4
	},
	{ cart_id: 7,
		product_id: 3,
		qty: 1
	},
	{ cart_id: 8,
		product_id: 4,
		qty: 2
	},
	{ cart_id: 9,
		product_id: 3,
		qty: 1
	},
	{ cart_id: 10,
		product_id: 1,
		qty: 2
	}
])

Order.create([
	# Delivered
	{ total: 0,
		tax: 0,
		status: 'delivered'
		customer_id: 1,
		cart_id: 1
	},
	{ total: 0,
		tax: 0,
		status: 'delivered'
		customer_id: 2,
		cart_id: 2
	},
	{ total: 0,
		tax: 0,
		status: 'delivered'
		customer_id: 2,
		cart_id: 3
	},
	{ total: 0,
		tax: 0,
		status: 'delivered'
		customer_id: 3,
		cart_id: 4
	},
	# Not yet delivered
	{ total: 0,
		tax: 0,
		status: 'paid'
		customer_id: 3,
		cart_id: 5
	},
	{ total: 0,
		tax: 0,
		status: 'paid'
		customer_id: 3,
		cart_id: 6
	},
	{ total: 0,
		tax: 0,
		status: 'paid'
		customer_id: 1,
		cart_id: 7
	},
	# Disputes
	{ total: 0,
		tax: 0,
		status: 'paid'
		customer_id: 3,
		cart_id: 8
	},
	{ total: 0,
		tax: 0,
		status: 'paid'
		customer_id: 3,
		cart_id: 9
	},
	{ total: 0,
		tax: 0,
		status: 'paid'
		customer_id: 3,
		cart_id: 10
	},
])

Charge.create([
	{ paid: true,
		amount: 0,
		refunded: false,
		order_id: 1,
		disputed: false
	},
	{ paid: true,
		amount: 0,
		refunded: false,
		order_id: 2,
		disputed: false
	},
	{ paid: true,
		amount: 0,
		refunded: false,
		order_id: 3,
		disputed: false
	},
	{ paid: true,
		amount: 0,
		refunded: false,
		order_id: 4,
		disputed: false
	},
	{ paid: true,
		amount: 0,
		refunded: false,
		order_id: 5,
		disputed: false
	},
	{ paid: true,
		amount: 0,
		refunded: false,
		order_id: 6,
		disputed: false
	},
	{ paid: true,
		amount: 0,
		refunded: false,
		order_id: 7,
		disputed: false
	},
	{ paid: true,
		amount: 0,
		refunded: true,
		order_id: 8,
		disputed: true
	},
	{ paid: true,
		amount: 0,
		refunded: false,
		order_id: 9,
		disputed: true
	},
	{ paid: true,
		amount: 0,
		refunded: false,
		order_id: 10,
		disputed: true
	}
])