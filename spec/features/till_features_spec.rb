require 'till.rb'

describe 'Till Features' do

  it 'knows the menu' do
    menu = Menu.new("hipstercoffee")
    till = Till.new(menu)
    expect(till.menu).to eq(menu)
  end

  it 'can build an order' do
    menu = Menu.new("hipstercoffee")
    till = Till.new(menu)
    till.add({"Cafe Latte": 1})
    till.add({"Choc Mousse": 2})
    till.add({"Muffin Of The Day": 3})
    expect(till.current_order).to eq([{"Cafe Latte": 1}, {"Choc Mousse": 2}, {"Muffin Of The Day": 3}])
  end

end
