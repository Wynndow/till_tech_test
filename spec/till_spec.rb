describe Till do

  let(:menu) {double :menu}
  subject(:till) {described_class.new(menu)}

  it 'can recall the menu' do
    expect(till.menu).to eq(menu)
  end

  it { is_expected.to respond_to(:current_order) }

  it 'adds items to the current order' do
    item = {item: :price}
    till.add(item)
    expect(till.current_order).to eq([{item: :price}])
  end


end
