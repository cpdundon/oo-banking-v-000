class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amt)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end
end
