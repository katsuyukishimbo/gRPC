# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/rpc/code.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_enum "google.rpc.Code" do
    value :OK, 0
    value :CANCELLED, 1
    value :UNKNOWN, 2
    value :INVALID_ARGUMENT, 3
    value :DEADLINE_EXCEEDED, 4
    value :NOT_FOUND, 5
    value :ALREADY_EXISTS, 6
    value :PERMISSION_DENIED, 7
    value :UNAUTHENTICATED, 16
    value :RESOURCE_EXHAUSTED, 8
    value :FAILED_PRECONDITION, 9
    value :ABORTED, 10
    value :OUT_OF_RANGE, 11
    value :UNIMPLEMENTED, 12
    value :INTERNAL, 13
    value :UNAVAILABLE, 14
    value :DATA_LOSS, 15
  end
end

module Google
  module Rpc
    Code = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.Code").enummodule
  end
end
