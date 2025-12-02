// This is a generated file - do not edit.
//
// Generated from api/ownmfa_session.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $1;

import 'ownmfa_session.pb.dart' as $0;

export 'ownmfa_session.pb.dart';

/// SessionService contains functions to create sessions and keys.
@$pb.GrpcServiceName('ownmfa.api.SessionService')
class SessionServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  SessionServiceClient(super.channel, {super.options, super.interceptors});

  /// Log in a user. Login tokens are time-limited and accompanied by an expiration.
  $grpc.ResponseFuture<$0.LoginResponse> login(
    $0.LoginRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$login, request, options: options);
  }

  /// Create an API key. API keys are persistent and do not expire until revoked.
  $grpc.ResponseFuture<$0.CreateKeyResponse> createKey(
    $0.CreateKeyRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createKey, request, options: options);
  }

  /// Delete an API key by ID. API keys are persistent and do not expire until revoked.
  $grpc.ResponseFuture<$1.Empty> deleteKey(
    $0.DeleteKeyRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteKey, request, options: options);
  }

  /// List all API keys. API keys are persistent and do not expire until revoked.
  $grpc.ResponseFuture<$0.ListKeysResponse> listKeys(
    $0.ListKeysRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listKeys, request, options: options);
  }

  // method descriptors

  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/ownmfa.api.SessionService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      $0.LoginResponse.fromBuffer);
  static final _$createKey =
      $grpc.ClientMethod<$0.CreateKeyRequest, $0.CreateKeyResponse>(
          '/ownmfa.api.SessionService/CreateKey',
          ($0.CreateKeyRequest value) => value.writeToBuffer(),
          $0.CreateKeyResponse.fromBuffer);
  static final _$deleteKey = $grpc.ClientMethod<$0.DeleteKeyRequest, $1.Empty>(
      '/ownmfa.api.SessionService/DeleteKey',
      ($0.DeleteKeyRequest value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
  static final _$listKeys =
      $grpc.ClientMethod<$0.ListKeysRequest, $0.ListKeysResponse>(
          '/ownmfa.api.SessionService/ListKeys',
          ($0.ListKeysRequest value) => value.writeToBuffer(),
          $0.ListKeysResponse.fromBuffer);
}

@$pb.GrpcServiceName('ownmfa.api.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'ownmfa.api.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateKeyRequest, $0.CreateKeyResponse>(
        'CreateKey',
        createKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateKeyRequest.fromBuffer(value),
        ($0.CreateKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteKeyRequest, $1.Empty>(
        'DeleteKey',
        deleteKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteKeyRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListKeysRequest, $0.ListKeysResponse>(
        'ListKeys',
        listKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListKeysRequest.fromBuffer(value),
        ($0.ListKeysResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> login_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.LoginRequest> $request) async {
    return login($call, await $request);
  }

  $async.Future<$0.LoginResponse> login(
      $grpc.ServiceCall call, $0.LoginRequest request);

  $async.Future<$0.CreateKeyResponse> createKey_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateKeyRequest> $request) async {
    return createKey($call, await $request);
  }

  $async.Future<$0.CreateKeyResponse> createKey(
      $grpc.ServiceCall call, $0.CreateKeyRequest request);

  $async.Future<$1.Empty> deleteKey_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteKeyRequest> $request) async {
    return deleteKey($call, await $request);
  }

  $async.Future<$1.Empty> deleteKey(
      $grpc.ServiceCall call, $0.DeleteKeyRequest request);

  $async.Future<$0.ListKeysResponse> listKeys_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ListKeysRequest> $request) async {
    return listKeys($call, await $request);
  }

  $async.Future<$0.ListKeysResponse> listKeys(
      $grpc.ServiceCall call, $0.ListKeysRequest request);
}
