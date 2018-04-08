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
    if @status.upcase == "COMPLETE"
      return nil
    end
    
    if !@sender.valid?
      return "Mombojombo"
    end
    
    sender.balance -= @amount
    receiver.balance += @amount
    
    @status = "complete"
    true
  end
end
