require 'menu.rb'

describe 'Menu Features' do

  it 'reads in the menu from a separate file on generation' do
    menu = Menu.new("hipstercoffee")
    expect(menu.shopname).to eq("The Coffee Connection")
  end

  it 'reads in the menu from a specified file on generation' do
    menu = Menu.new("straightlaced")
    expect(menu.shopname).to eq("The Straght Laced Coffee Shop")
  end


end
