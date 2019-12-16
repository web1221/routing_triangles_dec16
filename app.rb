require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
    @triangle = Triangle.new(0,0,0)
    erb(:triangle)
end

get ('/triangle') do
    erb(:triangle)
end

post('/triangle') do
    @triangle = Triangle.new(*params.values)
    erb(:triangle)
end
