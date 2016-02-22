require 'menu.rb'

describe Menu do

  subject(:menu) {described_class.new("hipstercoffee")}

  it 'has reads in the shopname from the menu file' do
    expect(menu.shopname).to eq("The Coffee Connection")
  end


end
