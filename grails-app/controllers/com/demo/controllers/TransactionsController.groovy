package com.demo.controllers

import com.demo.domains.Transactions;

class TransactionsController {
	static scaffold = Transactions
    def summary() { 
		def successTransactionList = Transactions.findAllByPaidAndRefunded(true,false)
		def failedTransactionList = Transactions.findAllByPaid(false)
		def refundedTransactionList = Transactions.findAllByRefunded(true)
		[successTransactionList : successTransactionList, failedTransactionList : failedTransactionList, refundedTransactionList : refundedTransactionList]
	}
}
