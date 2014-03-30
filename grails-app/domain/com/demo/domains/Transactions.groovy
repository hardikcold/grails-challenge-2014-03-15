package com.demo.domains

class Transactions {

	Boolean paid = true
	BigDecimal amount
	String currency = "GBP"
	Boolean refunded = false
	Date dateCreated
	
	static belongsTo = [customer : Customer]
    static constraints = {
		amount nullable : false, blank : false
    }
}
