require 'pry'
class Transfer
      attr_accessor :sender,:receiver,:amount,:status
     
      
      def initialize(sender,receiver,amount)
          self.sender= sender
          self.receiver= receiver
          self.amount= amount
          self.status= "pending"
      end
      
      def valid?
          if self.sender.valid? && self.receiver.valid? 
             true 
          else false
        end
      end
      
    
       def execute_transaction
<<<<<<< HEAD
     
          if self.sender.valid? && self.sender.balance > self.amount && self.status != "complete" && receiver.valid?
=======
    
          if self.sender.valid? && self.sender.balance > self.amount && self.status != "complete"
>>>>>>> d6a6a4ba8bf7185ed2ea075ee4db81192ebd41a7

         self.sender.balance -= amount
         self.receiver.balance += amount
         self.status = "complete"
      
          elsif self.sender.balance < amount || self.sender.valid?
            self.status = "rejected"
           return "Transaction rejected. Please check your account balance."
      
        end  

      end
  
       def reverse_transfer
            if self.status == "complete"
            self.sender.balance +=amount
            self.receiver.balance -=amount
            @status = "reversed"
           
            end
        end


end
