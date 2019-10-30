require_relative 'config/environment'

class App < Sinatra::Base
 
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse! 
  end 

  get '/square/:number' do
    @number = params[:number].to_i
    @square_number = @number*@number 
    "#{@square_number}"
  end 

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @array = ""
    @number.times do
      @array << "#{params[:phrase]} "
    end 
    "#{@array}"
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5] 

    "#{@word1} " "#{@word2} " "#{@word3} " "#{@word4} " "#{@word5}."
  end 

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @addition = params[:number1].to_i + params[:number2].to_i
      "#{@addition}"
      elsif params[:operation] == "subtract"
        @subtraction = params[:number1].to_i - params[:number2].to_i
        "#{@subtraction}"
      elsif params[:operation] == "multiply"
        @multiplication = params[:number1].to_i * params[:number2].to_i
        "#{@multiplication}"
      elsif params[:operation] == "divide"
        @division = params[:number1].to_i / params[:number2].to_i
        "#{@division}"
    end 
  end 

end