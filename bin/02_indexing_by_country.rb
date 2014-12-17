require 'yaml'
require 'pp'
raw_data = File.read('../data/amusement_parks.yml')
amusement_parks = YAML.load(raw_data)

result = {}

amusement_parks.each do |park|
  result[park[:country]] ||= []
  result[park[:country]] << park
end
p result
