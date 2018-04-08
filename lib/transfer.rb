class Transfer
  attr_accessor :sender, :from, :amount
  
  def initialize(sender, from, amt)
    @sender = sender
  end
end
