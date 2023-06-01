class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    #raise 'Implement the BoutiqueInventory#item_names method'
    @items.map { |item| item[:name] }.sort      
  end

  def cheap
    #raise 'Implement the BoutiqueInventory#cheap method'
    items.select { |item|  item[:price] < 30 }      
  end

  def out_of_stock
    #raise 'Implement the BoutiqueInventory#out_of_stock method'
    items.select { |item|  item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    #raise 'Implement the BoutiqueInventory#stock_for_item method'
    items
      .find { |item| item[:name] == name }
      .fetch(:quantity_by_size)
  end

  def total_stock
    #raise 'Implement the BoutiqueInventory#total_stock method'
    items.map { |item| item[:quantity_by_size].values }.flatten.sum
  end

  private
  attr_reader :items
end
