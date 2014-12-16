require 'yaml'
require 'pp'
raw_data = File.read('../data/amusement_parks.yml')
data = YAML.load(raw_data)

pp data
