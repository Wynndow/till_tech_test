require 'json'

class Menu

  attr_reader :menu_data

  def initialize(menu_file)
    @menu_data = get_and_parse_file(menu_file)
  end

  def shopname
    menu_data["shopName"]
  end

private

  def get_and_parse_file(menu_file)
    file = fetch_json_file(menu_file)
    menu_hash = parse_json_to_hash(file)
    remove_array_from_hash(menu_hash)
  end

  def fetch_json_file(menu_file)
    File.read(menu_file + '.json')
  end

  def parse_json_to_hash(file)
    JSON.parse(file)
  end

  def remove_array_from_hash(menu_hash)
    menu_hash[0]
  end

end
