// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: api/ownmfa_user.proto

#include "api/ownmfa_user.pb.h"
#include "api/ownmfa_user.grpc.pb.h"

#include <functional>
#include <grpcpp/support/async_stream.h>
#include <grpcpp/support/async_unary_call.h>
#include <grpcpp/impl/channel_interface.h>
#include <grpcpp/impl/client_unary_call.h>
#include <grpcpp/support/client_callback.h>
#include <grpcpp/support/message_allocator.h>
#include <grpcpp/support/method_handler.h>
#include <grpcpp/impl/rpc_service_method.h>
#include <grpcpp/support/server_callback.h>
#include <grpcpp/impl/server_callback_handlers.h>
#include <grpcpp/server_context.h>
#include <grpcpp/impl/service_type.h>
#include <grpcpp/support/sync_stream.h>
namespace ownmfa {
namespace api {

static const char* UserService_method_names[] = {
  "/ownmfa.api.UserService/CreateUser",
  "/ownmfa.api.UserService/GetUser",
  "/ownmfa.api.UserService/UpdateUser",
  "/ownmfa.api.UserService/UpdateUserPassword",
  "/ownmfa.api.UserService/DeleteUser",
  "/ownmfa.api.UserService/ListUsers",
};

std::unique_ptr< UserService::Stub> UserService::NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options) {
  (void)options;
  std::unique_ptr< UserService::Stub> stub(new UserService::Stub(channel, options));
  return stub;
}

UserService::Stub::Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options)
  : channel_(channel), rpcmethod_CreateUser_(UserService_method_names[0], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  , rpcmethod_GetUser_(UserService_method_names[1], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  , rpcmethod_UpdateUser_(UserService_method_names[2], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  , rpcmethod_UpdateUserPassword_(UserService_method_names[3], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  , rpcmethod_DeleteUser_(UserService_method_names[4], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  , rpcmethod_ListUsers_(UserService_method_names[5], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  {}

::grpc::Status UserService::Stub::CreateUser(::grpc::ClientContext* context, const ::ownmfa::api::CreateUserRequest& request, ::ownmfa::api::User* response) {
  return ::grpc::internal::BlockingUnaryCall< ::ownmfa::api::CreateUserRequest, ::ownmfa::api::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_CreateUser_, context, request, response);
}

void UserService::Stub::async::CreateUser(::grpc::ClientContext* context, const ::ownmfa::api::CreateUserRequest* request, ::ownmfa::api::User* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::ownmfa::api::CreateUserRequest, ::ownmfa::api::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_CreateUser_, context, request, response, std::move(f));
}

void UserService::Stub::async::CreateUser(::grpc::ClientContext* context, const ::ownmfa::api::CreateUserRequest* request, ::ownmfa::api::User* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_CreateUser_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::User>* UserService::Stub::PrepareAsyncCreateUserRaw(::grpc::ClientContext* context, const ::ownmfa::api::CreateUserRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::ownmfa::api::User, ::ownmfa::api::CreateUserRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_CreateUser_, context, request);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::User>* UserService::Stub::AsyncCreateUserRaw(::grpc::ClientContext* context, const ::ownmfa::api::CreateUserRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncCreateUserRaw(context, request, cq);
  result->StartCall();
  return result;
}

::grpc::Status UserService::Stub::GetUser(::grpc::ClientContext* context, const ::ownmfa::api::GetUserRequest& request, ::ownmfa::api::User* response) {
  return ::grpc::internal::BlockingUnaryCall< ::ownmfa::api::GetUserRequest, ::ownmfa::api::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_GetUser_, context, request, response);
}

void UserService::Stub::async::GetUser(::grpc::ClientContext* context, const ::ownmfa::api::GetUserRequest* request, ::ownmfa::api::User* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::ownmfa::api::GetUserRequest, ::ownmfa::api::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_GetUser_, context, request, response, std::move(f));
}

void UserService::Stub::async::GetUser(::grpc::ClientContext* context, const ::ownmfa::api::GetUserRequest* request, ::ownmfa::api::User* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_GetUser_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::User>* UserService::Stub::PrepareAsyncGetUserRaw(::grpc::ClientContext* context, const ::ownmfa::api::GetUserRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::ownmfa::api::User, ::ownmfa::api::GetUserRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_GetUser_, context, request);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::User>* UserService::Stub::AsyncGetUserRaw(::grpc::ClientContext* context, const ::ownmfa::api::GetUserRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncGetUserRaw(context, request, cq);
  result->StartCall();
  return result;
}

::grpc::Status UserService::Stub::UpdateUser(::grpc::ClientContext* context, const ::ownmfa::api::UpdateUserRequest& request, ::ownmfa::api::User* response) {
  return ::grpc::internal::BlockingUnaryCall< ::ownmfa::api::UpdateUserRequest, ::ownmfa::api::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_UpdateUser_, context, request, response);
}

void UserService::Stub::async::UpdateUser(::grpc::ClientContext* context, const ::ownmfa::api::UpdateUserRequest* request, ::ownmfa::api::User* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::ownmfa::api::UpdateUserRequest, ::ownmfa::api::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_UpdateUser_, context, request, response, std::move(f));
}

void UserService::Stub::async::UpdateUser(::grpc::ClientContext* context, const ::ownmfa::api::UpdateUserRequest* request, ::ownmfa::api::User* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_UpdateUser_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::User>* UserService::Stub::PrepareAsyncUpdateUserRaw(::grpc::ClientContext* context, const ::ownmfa::api::UpdateUserRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::ownmfa::api::User, ::ownmfa::api::UpdateUserRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_UpdateUser_, context, request);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::User>* UserService::Stub::AsyncUpdateUserRaw(::grpc::ClientContext* context, const ::ownmfa::api::UpdateUserRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncUpdateUserRaw(context, request, cq);
  result->StartCall();
  return result;
}

::grpc::Status UserService::Stub::UpdateUserPassword(::grpc::ClientContext* context, const ::ownmfa::api::UpdateUserPasswordRequest& request, ::google::protobuf::Empty* response) {
  return ::grpc::internal::BlockingUnaryCall< ::ownmfa::api::UpdateUserPasswordRequest, ::google::protobuf::Empty, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_UpdateUserPassword_, context, request, response);
}

void UserService::Stub::async::UpdateUserPassword(::grpc::ClientContext* context, const ::ownmfa::api::UpdateUserPasswordRequest* request, ::google::protobuf::Empty* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::ownmfa::api::UpdateUserPasswordRequest, ::google::protobuf::Empty, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_UpdateUserPassword_, context, request, response, std::move(f));
}

void UserService::Stub::async::UpdateUserPassword(::grpc::ClientContext* context, const ::ownmfa::api::UpdateUserPasswordRequest* request, ::google::protobuf::Empty* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_UpdateUserPassword_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::google::protobuf::Empty>* UserService::Stub::PrepareAsyncUpdateUserPasswordRaw(::grpc::ClientContext* context, const ::ownmfa::api::UpdateUserPasswordRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::google::protobuf::Empty, ::ownmfa::api::UpdateUserPasswordRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_UpdateUserPassword_, context, request);
}

::grpc::ClientAsyncResponseReader< ::google::protobuf::Empty>* UserService::Stub::AsyncUpdateUserPasswordRaw(::grpc::ClientContext* context, const ::ownmfa::api::UpdateUserPasswordRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncUpdateUserPasswordRaw(context, request, cq);
  result->StartCall();
  return result;
}

::grpc::Status UserService::Stub::DeleteUser(::grpc::ClientContext* context, const ::ownmfa::api::DeleteUserRequest& request, ::google::protobuf::Empty* response) {
  return ::grpc::internal::BlockingUnaryCall< ::ownmfa::api::DeleteUserRequest, ::google::protobuf::Empty, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_DeleteUser_, context, request, response);
}

void UserService::Stub::async::DeleteUser(::grpc::ClientContext* context, const ::ownmfa::api::DeleteUserRequest* request, ::google::protobuf::Empty* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::ownmfa::api::DeleteUserRequest, ::google::protobuf::Empty, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_DeleteUser_, context, request, response, std::move(f));
}

void UserService::Stub::async::DeleteUser(::grpc::ClientContext* context, const ::ownmfa::api::DeleteUserRequest* request, ::google::protobuf::Empty* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_DeleteUser_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::google::protobuf::Empty>* UserService::Stub::PrepareAsyncDeleteUserRaw(::grpc::ClientContext* context, const ::ownmfa::api::DeleteUserRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::google::protobuf::Empty, ::ownmfa::api::DeleteUserRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_DeleteUser_, context, request);
}

::grpc::ClientAsyncResponseReader< ::google::protobuf::Empty>* UserService::Stub::AsyncDeleteUserRaw(::grpc::ClientContext* context, const ::ownmfa::api::DeleteUserRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncDeleteUserRaw(context, request, cq);
  result->StartCall();
  return result;
}

::grpc::Status UserService::Stub::ListUsers(::grpc::ClientContext* context, const ::ownmfa::api::ListUsersRequest& request, ::ownmfa::api::ListUsersResponse* response) {
  return ::grpc::internal::BlockingUnaryCall< ::ownmfa::api::ListUsersRequest, ::ownmfa::api::ListUsersResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_ListUsers_, context, request, response);
}

void UserService::Stub::async::ListUsers(::grpc::ClientContext* context, const ::ownmfa::api::ListUsersRequest* request, ::ownmfa::api::ListUsersResponse* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::ownmfa::api::ListUsersRequest, ::ownmfa::api::ListUsersResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_ListUsers_, context, request, response, std::move(f));
}

void UserService::Stub::async::ListUsers(::grpc::ClientContext* context, const ::ownmfa::api::ListUsersRequest* request, ::ownmfa::api::ListUsersResponse* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_ListUsers_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::ListUsersResponse>* UserService::Stub::PrepareAsyncListUsersRaw(::grpc::ClientContext* context, const ::ownmfa::api::ListUsersRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::ownmfa::api::ListUsersResponse, ::ownmfa::api::ListUsersRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_ListUsers_, context, request);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::ListUsersResponse>* UserService::Stub::AsyncListUsersRaw(::grpc::ClientContext* context, const ::ownmfa::api::ListUsersRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncListUsersRaw(context, request, cq);
  result->StartCall();
  return result;
}

UserService::Service::Service() {
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      UserService_method_names[0],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< UserService::Service, ::ownmfa::api::CreateUserRequest, ::ownmfa::api::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](UserService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::ownmfa::api::CreateUserRequest* req,
             ::ownmfa::api::User* resp) {
               return service->CreateUser(ctx, req, resp);
             }, this)));
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      UserService_method_names[1],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< UserService::Service, ::ownmfa::api::GetUserRequest, ::ownmfa::api::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](UserService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::ownmfa::api::GetUserRequest* req,
             ::ownmfa::api::User* resp) {
               return service->GetUser(ctx, req, resp);
             }, this)));
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      UserService_method_names[2],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< UserService::Service, ::ownmfa::api::UpdateUserRequest, ::ownmfa::api::User, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](UserService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::ownmfa::api::UpdateUserRequest* req,
             ::ownmfa::api::User* resp) {
               return service->UpdateUser(ctx, req, resp);
             }, this)));
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      UserService_method_names[3],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< UserService::Service, ::ownmfa::api::UpdateUserPasswordRequest, ::google::protobuf::Empty, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](UserService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::ownmfa::api::UpdateUserPasswordRequest* req,
             ::google::protobuf::Empty* resp) {
               return service->UpdateUserPassword(ctx, req, resp);
             }, this)));
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      UserService_method_names[4],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< UserService::Service, ::ownmfa::api::DeleteUserRequest, ::google::protobuf::Empty, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](UserService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::ownmfa::api::DeleteUserRequest* req,
             ::google::protobuf::Empty* resp) {
               return service->DeleteUser(ctx, req, resp);
             }, this)));
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      UserService_method_names[5],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< UserService::Service, ::ownmfa::api::ListUsersRequest, ::ownmfa::api::ListUsersResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](UserService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::ownmfa::api::ListUsersRequest* req,
             ::ownmfa::api::ListUsersResponse* resp) {
               return service->ListUsers(ctx, req, resp);
             }, this)));
}

UserService::Service::~Service() {
}

::grpc::Status UserService::Service::CreateUser(::grpc::ServerContext* context, const ::ownmfa::api::CreateUserRequest* request, ::ownmfa::api::User* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}

::grpc::Status UserService::Service::GetUser(::grpc::ServerContext* context, const ::ownmfa::api::GetUserRequest* request, ::ownmfa::api::User* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}

::grpc::Status UserService::Service::UpdateUser(::grpc::ServerContext* context, const ::ownmfa::api::UpdateUserRequest* request, ::ownmfa::api::User* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}

::grpc::Status UserService::Service::UpdateUserPassword(::grpc::ServerContext* context, const ::ownmfa::api::UpdateUserPasswordRequest* request, ::google::protobuf::Empty* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}

::grpc::Status UserService::Service::DeleteUser(::grpc::ServerContext* context, const ::ownmfa::api::DeleteUserRequest* request, ::google::protobuf::Empty* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}

::grpc::Status UserService::Service::ListUsers(::grpc::ServerContext* context, const ::ownmfa::api::ListUsersRequest* request, ::ownmfa::api::ListUsersResponse* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}


}  // namespace ownmfa
}  // namespace api

