require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params['name']
    "#{name.split('').reverse.join}"
  end

  get '/square/:number' do
    num = params["number"].to_i
    "#{num * num}"
  end

  get '/say/:number/:phrase' do
    num = params["number"].to_i
    phrase = params["phrase"]
    str = ""
    num.times { str += "#{phrase}\n" }
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params["word1"]} #{params["word2"]} #{params["word3"]} #{params["word4"]} #{params["word5"]}."
  end

  get '/:operation/:number1/:number2' do
    ops = {"add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}
    oper = ops[params["operation"]]
    num1 = params["number1"].to_i
    num2 = params["number2"].to_i
    puts oper
    puts num1
    puts num2
    "#{num1.method(oper).(num2)}"
  end
end