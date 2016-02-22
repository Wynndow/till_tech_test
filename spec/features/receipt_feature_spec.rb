describe 'Receipt Features' do

  it 'can produce a receipt' do
    menu = Menu.new("hipstercoffee")
    till = Till.new(menu)
    till.add({"Cafe Latte": 1})
    till.add({"Choc Mousse": 2})
    till.add({"Muffin Of The Day": 3})
    expect(till.generate_receipt.class).to eq(Receipt)
  end

end
