require 'greeter_services_pb.rb'
require 'greeter_pb.rb'

class ApplicationController < ActionController::API
  def hello
    stub = Greeter::Greeter::Stub.new('localhost:5000', :this_channel_is_insecure)
    hq = stub.say_hello(Greeter::HelloRequest.new)
    render json: {message: hq.message}
  end
end
