require 'till.rb'

describe 'Till Features' do

  it 'Is a thing' do
    expect(Till).to respond_to(:new)
  end

  it 'knows the menu' do
    menu = Menu.new
    till = Till.new(menu)
    expect(till.menu).to eq(menu)
  end

end
