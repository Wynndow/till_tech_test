require 'till.rb'

describe 'Till Features' do

  it 'knows the menu' do
    menu = Menu.new
    till = Till.new(menu)
    expect(till.menu).to eq(menu)
  end

end
