class Transfer
  attr_accessor :sender, :receiver, :amount
  
  def initialize(sender, receiver, amt)
    @sender = sender
    @receiver = receiver
    
  end
end
