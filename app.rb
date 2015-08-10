require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

get('/') do
  erb(:index)
end

get('/triangle') do
  length = params.fetch('length')
  width = params.fetch('width')
  height = params.fetch('height')
  @triangle = Triangle.new(length, width, height)
  erb(:triangle)
end
