require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader'
require 'sinatra/flash'

enable :sessions

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development, :test do
  require 'pry'
end

configure do
  set :views, 'app/views'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

get '/' do
  @cough_medicines = CoughMedicine.all
  erb :index
end

get '/cough_medicines/:id' do
  id = params[:id]
  @cough_medicine = CoughMedicine.find(id)
  erb :show
end
