require "sinatra/base"
require "./spec/features/index_spec.rb"

class Birthday < Sinatra::Base
  get "/" do
    erb :index
  end
  post "/birthday" do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    erb :birthday
  end
end
