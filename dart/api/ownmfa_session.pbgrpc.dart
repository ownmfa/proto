//
//  Generated code. Do not modify.
//  source: api/ownmfa_session.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $1;
import 'ownmfa_session.pb.dart' as $4;

export 'ownmfa_session.pb.dart';

@$pb.GrpcServiceName('ownmfa.api.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$4.LoginRequest, $4.LoginResponse>(
      '/ownmfa.api.SessionService/Login',
      ($4.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.LoginResponse.fromBuffer(value));
  static final _$createKey = $grpc.ClientMethod<$4.CreateKeyRequest, $4.CreateKeyResponse>(
      '/ownmfa.api.SessionService/CreateKey',
      ($4.CreateKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateKeyResponse.fromBuffer(value));
  static final _$deleteKey = $grpc.ClientMethod<$4.DeleteKeyRequest, $1.Empty>(
      '/ownmfa.api.SessionService/DeleteKey',
      ($4.DeleteKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$listKeys = $grpc.ClientMethod<$4.ListKeysRequest, $4.ListKeysResponse>(
      '/ownmfa.api.SessionService/ListKeys',
      ($4.ListKeysRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListKeysResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.LoginResponse> login($4.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateKeyResponse> createKey($4.CreateKeyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteKey($4.DeleteKeyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteKey, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListKeysResponse> listKeys($4.ListKeysRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listKeys, request, options: options);
  }
}

@$pb.GrpcServiceName('ownmfa.api.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'ownmfa.api.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.LoginRequest, $4.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.LoginRequest.fromBuffer(value),
        ($4.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateKeyRequest, $4.CreateKeyResponse>(
        'CreateKey',
        createKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateKeyRequest.fromBuffer(value),
        ($4.CreateKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteKeyRequest, $1.Empty>(
        'DeleteKey',
        deleteKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteKeyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListKeysRequest, $4.ListKeysResponse>(
        'ListKeys',
        listKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListKeysRequest.fromBuffer(value),
        ($4.ListKeysResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.LoginResponse> login_Pre($grpc.ServiceCall $call, $async.Future<$4.LoginRequest> $request) async {
    return login($call, await $request);
  }

  $async.Future<$4.CreateKeyResponse> createKey_Pre($grpc.ServiceCall $call, $async.Future<$4.CreateKeyRequest> $request) async {
    return createKey($call, await $request);
  }

  $async.Future<$1.Empty> deleteKey_Pre($grpc.ServiceCall $call, $async.Future<$4.DeleteKeyRequest> $request) async {
    return deleteKey($call, await $request);
  }

  $async.Future<$4.ListKeysResponse> listKeys_Pre($grpc.ServiceCall $call, $async.Future<$4.ListKeysRequest> $request) async {
    return listKeys($call, await $request);
  }

  $async.Future<$4.LoginResponse> login($grpc.ServiceCall call, $4.LoginRequest request);
  $async.Future<$4.CreateKeyResponse> createKey($grpc.ServiceCall call, $4.CreateKeyRequest request);
  $async.Future<$1.Empty> deleteKey($grpc.ServiceCall call, $4.DeleteKeyRequest request);
  $async.Future<$4.ListKeysResponse> listKeys($grpc.ServiceCall call, $4.ListKeysRequest request);
}
