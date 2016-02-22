describe Till do

  let(:menu) {double :menu}
  subject(:till) {described_class.new(menu)}

  it 'can exist' do
    expect(till.class).to be (Till)
  end

  it 'can recall the menu' do
    expect(till.menu).to eq(menu)
  end


end
