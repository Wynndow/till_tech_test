require 'menu.rb'

describe Menu do

  subject(:menu) {described_class.new("hipstercoffee")}
  subject(:straight_menu) {described_class.new("straightlaced")}

  it 'has reads in the shopname from the menu file' do
    expect(menu.shopname).to eq("The Coffee Connection")
  end

  it 'has reads in the shopname from the specified menu file' do
    expect(straight_menu.shopname).to eq("The Straght Laced Coffee Shop")
  end


end
