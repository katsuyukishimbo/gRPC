# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: greeter.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("greeter.proto", :syntax => :proto3) do
    add_message "greeter.HelloRequest" do
      optional :name, :string, 1
    end
    add_message "greeter.HelloReply" do
      optional :message, :string, 1
    end
  end
end

module Greeter
  HelloRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("greeter.HelloRequest").msgclass
  HelloReply = Google::Protobuf::DescriptorPool.generated_pool.lookup("greeter.HelloReply").msgclass
end
