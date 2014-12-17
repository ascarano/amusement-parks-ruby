require 'yaml'
require 'pp'
raw_data = File.read('../data/amusement_parks.yml')
amusement_parks = YAML.load(raw_data)

result = {}
key = []

amusement_parks.each do |park|
  key = "#{park[:country]}, #{park[:state]}"
  result[key] = park
end

p result
