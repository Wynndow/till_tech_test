class Till

  attr_reader :menu, :current_order, :receipt

  def initialize(menu, receipt_klass = Receipt)
    @menu = menu
    @current_order = []
    @receipt = receipt_klass
  end

  def add(item_hash)
    @current_order.push(item_hash)
  end

  def generate_receipt
    receipt.new
  end

end
