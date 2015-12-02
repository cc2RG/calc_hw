require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
# get '/multiply/:x/:y' do
#   @result = params[:x].to_f * params[:y].to_f
#   erb :result
# end  

get '/calculate' do
  @first = params[:first].to_f
  @second = params[:second].to_f
  @operator = params[:operator]
  
  @result = case @operator
    when '+' then @first + @second
    when '-' then @first - @second
    when '*' then @first * @second
    when '/' then @first / @second
  end  
  #binding.pry
  erb :result
end  

get '/submit' do
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  
  erb :thank_you

  

end  

get '/' do
  erb :home
end

get '/about_us'do
  erb :about_us
end

get '/thank_you'do
  erb :thank_you
end

get '/contact_us'do
  erb :contact_us
end




