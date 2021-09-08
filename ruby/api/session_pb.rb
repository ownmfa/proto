# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/session.proto

require 'google/protobuf'

require 'common/role_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'protoc-gen-openapiv2/options/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("api/session.proto", :syntax => :proto3) do
    add_message "ownmfa.api.LoginRequest" do
      optional :email, :string, 1
      optional :org_name, :string, 2
      optional :password, :string, 3
    end
    add_message "ownmfa.api.LoginResponse" do
      optional :token, :string, 1
      optional :expires_at, :message, 2, "google.protobuf.Timestamp"
    end
    add_message "ownmfa.api.Key" do
      optional :id, :string, 1
      optional :org_id, :string, 2
      optional :name, :string, 3
      optional :role, :enum, 4, "ownmfa.common.Role"
      optional :created_at, :message, 5, "google.protobuf.Timestamp"
    end
    add_message "ownmfa.api.CreateKeyRequest" do
      optional :key, :message, 1, "ownmfa.api.Key"
    end
    add_message "ownmfa.api.CreateKeyResponse" do
      optional :key, :message, 1, "ownmfa.api.Key"
      optional :token, :string, 2
    end
    add_message "ownmfa.api.DeleteKeyRequest" do
      optional :id, :string, 1
    end
    add_message "ownmfa.api.ListKeysRequest" do
      optional :page_size, :int32, 1
      optional :page_token, :string, 2
    end
    add_message "ownmfa.api.ListKeysResponse" do
      repeated :keys, :message, 1, "ownmfa.api.Key"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
  end
end

module Ownmfa
  module Api
    LoginRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.LoginRequest").msgclass
    LoginResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.LoginResponse").msgclass
    Key = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.Key").msgclass
    CreateKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.CreateKeyRequest").msgclass
    CreateKeyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.CreateKeyResponse").msgclass
    DeleteKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.DeleteKeyRequest").msgclass
    ListKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.ListKeysRequest").msgclass
    ListKeysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ownmfa.api.ListKeysResponse").msgclass
  end
end