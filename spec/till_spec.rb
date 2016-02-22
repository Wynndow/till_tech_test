describe Till do

  let(:menu) {double :menu}
  let(:receipt_object) {double :receipt_object, class: Receipt}
  let(:receipt) {double :receipt, new: receipt_object}
  subject(:till) {described_class.new(menu, receipt)}


  it 'can recall the menu' do
    expect(till.menu).to eq(menu)
  end

  it 'adds items to the current order' do
    item = {item: :price}
    till.add(item)
    expect(till.current_order).to eq([{item: :price}])
  end

  it { is_expected.to respond_to(:generate_receipt) }

  it 'produces a receipt' do
    till.add({"Cafe Latte": 1})
    till.add({"Choc Mousse": 2})
    till.add({"Muffin Of The Day": 3})
    expect(till.generate_receipt.class).to eq(Receipt)
  end


end
