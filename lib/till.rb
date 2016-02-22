class Till

  attr_reader :menu, :current_order

  def initialize(menu)
    @menu = menu
    @current_order = []
  end

  def add(item_hash)
    @current_order.push(item_hash)
  end

end
