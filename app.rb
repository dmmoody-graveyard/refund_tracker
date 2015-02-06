require 'bundler/setup'
Bundler.require :default

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  erb :index
end

get '/case' do
  @case = Case.all
  erb :case
end

get '/case/new' do
  erb :new_case
end

post '/case' do
  name = params.fetch 'name'
  number = params.fetch 'number'
  @case = Case.create :name => name, :number => number
  redirect '/case'
end