//
//  Generated code. Do not modify.
//  source: api/ownmfa_event.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ownmfa_event.pb.dart' as $2;

export 'ownmfa_event.pb.dart';

@$pb.GrpcServiceName('ownmfa.api.EventService')
class EventServiceClient extends $grpc.Client {
  static final _$listEvents = $grpc.ClientMethod<$2.ListEventsRequest, $2.ListEventsResponse>(
      '/ownmfa.api.EventService/ListEvents',
      ($2.ListEventsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListEventsResponse.fromBuffer(value));
  static final _$latestEvents = $grpc.ClientMethod<$2.LatestEventsRequest, $2.LatestEventsResponse>(
      '/ownmfa.api.EventService/LatestEvents',
      ($2.LatestEventsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.LatestEventsResponse.fromBuffer(value));

  EventServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.ListEventsResponse> listEvents($2.ListEventsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listEvents, request, options: options);
  }

  $grpc.ResponseFuture<$2.LatestEventsResponse> latestEvents($2.LatestEventsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$latestEvents, request, options: options);
  }
}

@$pb.GrpcServiceName('ownmfa.api.EventService')
abstract class EventServiceBase extends $grpc.Service {
  $core.String get $name => 'ownmfa.api.EventService';

  EventServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.ListEventsRequest, $2.ListEventsResponse>(
        'ListEvents',
        listEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListEventsRequest.fromBuffer(value),
        ($2.ListEventsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.LatestEventsRequest, $2.LatestEventsResponse>(
        'LatestEvents',
        latestEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.LatestEventsRequest.fromBuffer(value),
        ($2.LatestEventsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.ListEventsResponse> listEvents_Pre($grpc.ServiceCall call, $async.Future<$2.ListEventsRequest> request) async {
    return listEvents(call, await request);
  }

  $async.Future<$2.LatestEventsResponse> latestEvents_Pre($grpc.ServiceCall call, $async.Future<$2.LatestEventsRequest> request) async {
    return latestEvents(call, await request);
  }

  $async.Future<$2.ListEventsResponse> listEvents($grpc.ServiceCall call, $2.ListEventsRequest request);
  $async.Future<$2.LatestEventsResponse> latestEvents($grpc.ServiceCall call, $2.LatestEventsRequest request);
}
