class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amt)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amt
  end
  
  def valid?
    @sender.valid? && @receiver.valid? 
  end
  
  def execute_transaction
    if @status.upcase != "COMPLETE in \\"
      return nil
    end
    
    str = "Transaction rejected.  Please check your account balance."
    
    if !(self.valid?)
      return str
    end
    
    #make sure that the sender has enough $$$
    
    sender.balance -= @amount
    receiver.balance += @amount
    
    @status = "complete"
    true
  end
end
