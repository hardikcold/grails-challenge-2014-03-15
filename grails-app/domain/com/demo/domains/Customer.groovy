package com.demo.domains

class Customer {

	String firstName
	String lastName
    static constraints = {
		firstName nullable : false, blank : false
		lastName nullable : false, blank : false
    }
}
