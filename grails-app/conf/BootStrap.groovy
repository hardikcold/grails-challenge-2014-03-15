import com.demo.domains.Customer
import com.demo.domains.Transactions;

class BootStrap {

    def init = { servletContext ->
		def customerInstance1 = new Customer(firstName : 'John', lastName : 'Flow').save(flush:true)
		def customerInstance2 = new Customer(firstName : 'Raj', lastName : 'Jamnis').save(flush:true)
		def customerInstance3 = new Customer(firstName : 'Andrew', lastName : 'Chung').save(flush:true)
		def customerInstance4 = new Customer(firstName : 'Mike', lastName : 'Smith').save(flush:true)
		
		/**
		 *Create 10 Successful Transaction 
		 */
		//Transaction for Customer 1
		def transactionInstance = new Transactions(amount : 100, customer : customerInstance1).save(flush:true)
		transactionInstance = new Transactions(amount : 200, customer : customerInstance1).save(flush:true)
		transactionInstance = new Transactions(amount : 300, customer : customerInstance1).save(flush:true)
		transactionInstance = new Transactions(amount : 400, customer : customerInstance1).save(flush:true)
		transactionInstance = new Transactions(amount : 500, customer : customerInstance1).save(flush:true)
		
		//Transaction for Customer 2
		transactionInstance = new Transactions(amount : 600, customer : customerInstance2).save(flush:true)
		transactionInstance = new Transactions(amount : 700, customer : customerInstance2).save(flush:true)
		transactionInstance = new Transactions(amount : 800, customer : customerInstance2).save(flush:true)
		
		//Transaction for Customer 3
		transactionInstance = new Transactions(amount : 900, customer : customerInstance3).save(flush:true)
		
		//Transaction for Customer 4
		transactionInstance = new Transactions(amount : 1000, customer : customerInstance4).save(flush:true)
		
		/**
		 *Create 5 failed Transaction
		 */
		transactionInstance = new Transactions(amount : 1100, customer : customerInstance3, paid : false).save(flush:true)
		transactionInstance = new Transactions(amount : 1200, customer : customerInstance3, paid : false).save(flush:true)
		transactionInstance = new Transactions(amount : 1300, customer : customerInstance3, paid : false).save(flush:true)
		transactionInstance = new Transactions(amount : 1400, customer : customerInstance4, paid : false).save(flush:true)
		transactionInstance = new Transactions(amount : 1500, customer : customerInstance4, paid : false).save(flush:true)
		
		/**
		 *Create 6 refunded Transaction
		 */
		
		transactionInstance = new Transactions(amount : 1700, customer : customerInstance1, refunded : true).save(flush:true)
		transactionInstance = new Transactions(amount : 1800, customer : customerInstance1, refunded : true).save(flush:true)
		transactionInstance = new Transactions(amount : 1900, customer : customerInstance1, refunded : true).save(flush:true)
		transactionInstance = new Transactions(amount : 2000, customer : customerInstance1, refunded : true).save(flush:true)
		transactionInstance = new Transactions(amount : 2100, customer : customerInstance2, refunded : true).save(flush:true)
		transactionInstance = new Transactions(amount : 2200, customer : customerInstance2, refunded : true).save(flush:true)
		
    }
    def destroy = {
    }
}
