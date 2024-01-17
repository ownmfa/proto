// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: api/ownmfa_event.proto

#include "api/ownmfa_event.pb.h"
#include "api/ownmfa_event.grpc.pb.h"

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

static const char* EventService_method_names[] = {
  "/ownmfa.api.EventService/ListEvents",
  "/ownmfa.api.EventService/LatestEvents",
};

std::unique_ptr< EventService::Stub> EventService::NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options) {
  (void)options;
  std::unique_ptr< EventService::Stub> stub(new EventService::Stub(channel, options));
  return stub;
}

EventService::Stub::Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options)
  : channel_(channel), rpcmethod_ListEvents_(EventService_method_names[0], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  , rpcmethod_LatestEvents_(EventService_method_names[1], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  {}

::grpc::Status EventService::Stub::ListEvents(::grpc::ClientContext* context, const ::ownmfa::api::ListEventsRequest& request, ::ownmfa::api::ListEventsResponse* response) {
  return ::grpc::internal::BlockingUnaryCall< ::ownmfa::api::ListEventsRequest, ::ownmfa::api::ListEventsResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_ListEvents_, context, request, response);
}

void EventService::Stub::async::ListEvents(::grpc::ClientContext* context, const ::ownmfa::api::ListEventsRequest* request, ::ownmfa::api::ListEventsResponse* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::ownmfa::api::ListEventsRequest, ::ownmfa::api::ListEventsResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_ListEvents_, context, request, response, std::move(f));
}

void EventService::Stub::async::ListEvents(::grpc::ClientContext* context, const ::ownmfa::api::ListEventsRequest* request, ::ownmfa::api::ListEventsResponse* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_ListEvents_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::ListEventsResponse>* EventService::Stub::PrepareAsyncListEventsRaw(::grpc::ClientContext* context, const ::ownmfa::api::ListEventsRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::ownmfa::api::ListEventsResponse, ::ownmfa::api::ListEventsRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_ListEvents_, context, request);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::ListEventsResponse>* EventService::Stub::AsyncListEventsRaw(::grpc::ClientContext* context, const ::ownmfa::api::ListEventsRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncListEventsRaw(context, request, cq);
  result->StartCall();
  return result;
}

::grpc::Status EventService::Stub::LatestEvents(::grpc::ClientContext* context, const ::ownmfa::api::LatestEventsRequest& request, ::ownmfa::api::LatestEventsResponse* response) {
  return ::grpc::internal::BlockingUnaryCall< ::ownmfa::api::LatestEventsRequest, ::ownmfa::api::LatestEventsResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_LatestEvents_, context, request, response);
}

void EventService::Stub::async::LatestEvents(::grpc::ClientContext* context, const ::ownmfa::api::LatestEventsRequest* request, ::ownmfa::api::LatestEventsResponse* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::ownmfa::api::LatestEventsRequest, ::ownmfa::api::LatestEventsResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_LatestEvents_, context, request, response, std::move(f));
}

void EventService::Stub::async::LatestEvents(::grpc::ClientContext* context, const ::ownmfa::api::LatestEventsRequest* request, ::ownmfa::api::LatestEventsResponse* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_LatestEvents_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::LatestEventsResponse>* EventService::Stub::PrepareAsyncLatestEventsRaw(::grpc::ClientContext* context, const ::ownmfa::api::LatestEventsRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::ownmfa::api::LatestEventsResponse, ::ownmfa::api::LatestEventsRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_LatestEvents_, context, request);
}

::grpc::ClientAsyncResponseReader< ::ownmfa::api::LatestEventsResponse>* EventService::Stub::AsyncLatestEventsRaw(::grpc::ClientContext* context, const ::ownmfa::api::LatestEventsRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncLatestEventsRaw(context, request, cq);
  result->StartCall();
  return result;
}

EventService::Service::Service() {
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      EventService_method_names[0],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< EventService::Service, ::ownmfa::api::ListEventsRequest, ::ownmfa::api::ListEventsResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](EventService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::ownmfa::api::ListEventsRequest* req,
             ::ownmfa::api::ListEventsResponse* resp) {
               return service->ListEvents(ctx, req, resp);
             }, this)));
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      EventService_method_names[1],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< EventService::Service, ::ownmfa::api::LatestEventsRequest, ::ownmfa::api::LatestEventsResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](EventService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::ownmfa::api::LatestEventsRequest* req,
             ::ownmfa::api::LatestEventsResponse* resp) {
               return service->LatestEvents(ctx, req, resp);
             }, this)));
}

EventService::Service::~Service() {
}

::grpc::Status EventService::Service::ListEvents(::grpc::ServerContext* context, const ::ownmfa::api::ListEventsRequest* request, ::ownmfa::api::ListEventsResponse* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}

::grpc::Status EventService::Service::LatestEvents(::grpc::ServerContext* context, const ::ownmfa::api::LatestEventsRequest* request, ::ownmfa::api::LatestEventsResponse* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}


}  // namespace ownmfa
}  // namespace api
