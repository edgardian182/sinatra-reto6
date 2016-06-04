require 'sinatra'

get '/' do
  @cuenta = 0
  if params[:suma]
    @cuenta = params[:cuenta].to_i + params[:suma].to_i
    erb :index
  else
    @cuenta = 0
    erb :index
  end
end

post '/' do
  @cuenta = params[:cuenta]
  redirect "/?suma=1&cuenta=#{@cuenta}"
end
