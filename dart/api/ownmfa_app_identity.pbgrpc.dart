//
//  Generated code. Do not modify.
//  source: api/ownmfa_app_identity.proto
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
import 'ownmfa_app_identity.pb.dart' as $0;

export 'ownmfa_app_identity.pb.dart';

@$pb.GrpcServiceName('ownmfa.api.AppIdentityService')
class AppIdentityServiceClient extends $grpc.Client {
  static final _$createApp = $grpc.ClientMethod<$0.CreateAppRequest, $0.App>(
      '/ownmfa.api.AppIdentityService/CreateApp',
      ($0.CreateAppRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.App.fromBuffer(value));
  static final _$createIdentity = $grpc.ClientMethod<$0.CreateIdentityRequest, $0.CreateIdentityResponse>(
      '/ownmfa.api.AppIdentityService/CreateIdentity',
      ($0.CreateIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateIdentityResponse.fromBuffer(value));
  static final _$activateIdentity = $grpc.ClientMethod<$0.ActivateIdentityRequest, $0.Identity>(
      '/ownmfa.api.AppIdentityService/ActivateIdentity',
      ($0.ActivateIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Identity.fromBuffer(value));
  static final _$challengeIdentity = $grpc.ClientMethod<$0.ChallengeIdentityRequest, $1.Empty>(
      '/ownmfa.api.AppIdentityService/ChallengeIdentity',
      ($0.ChallengeIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$verifyIdentity = $grpc.ClientMethod<$0.VerifyIdentityRequest, $1.Empty>(
      '/ownmfa.api.AppIdentityService/VerifyIdentity',
      ($0.VerifyIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getApp = $grpc.ClientMethod<$0.GetAppRequest, $0.App>(
      '/ownmfa.api.AppIdentityService/GetApp',
      ($0.GetAppRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.App.fromBuffer(value));
  static final _$getIdentity = $grpc.ClientMethod<$0.GetIdentityRequest, $0.Identity>(
      '/ownmfa.api.AppIdentityService/GetIdentity',
      ($0.GetIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Identity.fromBuffer(value));
  static final _$updateApp = $grpc.ClientMethod<$0.UpdateAppRequest, $0.App>(
      '/ownmfa.api.AppIdentityService/UpdateApp',
      ($0.UpdateAppRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.App.fromBuffer(value));
  static final _$deleteApp = $grpc.ClientMethod<$0.DeleteAppRequest, $1.Empty>(
      '/ownmfa.api.AppIdentityService/DeleteApp',
      ($0.DeleteAppRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteIdentity = $grpc.ClientMethod<$0.DeleteIdentityRequest, $1.Empty>(
      '/ownmfa.api.AppIdentityService/DeleteIdentity',
      ($0.DeleteIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$listApps = $grpc.ClientMethod<$0.ListAppsRequest, $0.ListAppsResponse>(
      '/ownmfa.api.AppIdentityService/ListApps',
      ($0.ListAppsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListAppsResponse.fromBuffer(value));
  static final _$listIdentities = $grpc.ClientMethod<$0.ListIdentitiesRequest, $0.ListIdentitiesResponse>(
      '/ownmfa.api.AppIdentityService/ListIdentities',
      ($0.ListIdentitiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListIdentitiesResponse.fromBuffer(value));

  AppIdentityServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.App> createApp($0.CreateAppRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createApp, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateIdentityResponse> createIdentity($0.CreateIdentityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.Identity> activateIdentity($0.ActivateIdentityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$activateIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> challengeIdentity($0.ChallengeIdentityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$challengeIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> verifyIdentity($0.VerifyIdentityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.App> getApp($0.GetAppRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getApp, request, options: options);
  }

  $grpc.ResponseFuture<$0.Identity> getIdentity($0.GetIdentityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.App> updateApp($0.UpdateAppRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateApp, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteApp($0.DeleteAppRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteApp, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteIdentity($0.DeleteIdentityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListAppsResponse> listApps($0.ListAppsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listApps, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListIdentitiesResponse> listIdentities($0.ListIdentitiesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listIdentities, request, options: options);
  }
}

@$pb.GrpcServiceName('ownmfa.api.AppIdentityService')
abstract class AppIdentityServiceBase extends $grpc.Service {
  $core.String get $name => 'ownmfa.api.AppIdentityService';

  AppIdentityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateAppRequest, $0.App>(
        'CreateApp',
        createApp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateAppRequest.fromBuffer(value),
        ($0.App value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateIdentityRequest, $0.CreateIdentityResponse>(
        'CreateIdentity',
        createIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateIdentityRequest.fromBuffer(value),
        ($0.CreateIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ActivateIdentityRequest, $0.Identity>(
        'ActivateIdentity',
        activateIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ActivateIdentityRequest.fromBuffer(value),
        ($0.Identity value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChallengeIdentityRequest, $1.Empty>(
        'ChallengeIdentity',
        challengeIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChallengeIdentityRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VerifyIdentityRequest, $1.Empty>(
        'VerifyIdentity',
        verifyIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VerifyIdentityRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAppRequest, $0.App>(
        'GetApp',
        getApp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAppRequest.fromBuffer(value),
        ($0.App value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetIdentityRequest, $0.Identity>(
        'GetIdentity',
        getIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetIdentityRequest.fromBuffer(value),
        ($0.Identity value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateAppRequest, $0.App>(
        'UpdateApp',
        updateApp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateAppRequest.fromBuffer(value),
        ($0.App value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteAppRequest, $1.Empty>(
        'DeleteApp',
        deleteApp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteAppRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteIdentityRequest, $1.Empty>(
        'DeleteIdentity',
        deleteIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteIdentityRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListAppsRequest, $0.ListAppsResponse>(
        'ListApps',
        listApps_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListAppsRequest.fromBuffer(value),
        ($0.ListAppsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListIdentitiesRequest, $0.ListIdentitiesResponse>(
        'ListIdentities',
        listIdentities_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListIdentitiesRequest.fromBuffer(value),
        ($0.ListIdentitiesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.App> createApp_Pre($grpc.ServiceCall $call, $async.Future<$0.CreateAppRequest> $request) async {
    return createApp($call, await $request);
  }

  $async.Future<$0.CreateIdentityResponse> createIdentity_Pre($grpc.ServiceCall $call, $async.Future<$0.CreateIdentityRequest> $request) async {
    return createIdentity($call, await $request);
  }

  $async.Future<$0.Identity> activateIdentity_Pre($grpc.ServiceCall $call, $async.Future<$0.ActivateIdentityRequest> $request) async {
    return activateIdentity($call, await $request);
  }

  $async.Future<$1.Empty> challengeIdentity_Pre($grpc.ServiceCall $call, $async.Future<$0.ChallengeIdentityRequest> $request) async {
    return challengeIdentity($call, await $request);
  }

  $async.Future<$1.Empty> verifyIdentity_Pre($grpc.ServiceCall $call, $async.Future<$0.VerifyIdentityRequest> $request) async {
    return verifyIdentity($call, await $request);
  }

  $async.Future<$0.App> getApp_Pre($grpc.ServiceCall $call, $async.Future<$0.GetAppRequest> $request) async {
    return getApp($call, await $request);
  }

  $async.Future<$0.Identity> getIdentity_Pre($grpc.ServiceCall $call, $async.Future<$0.GetIdentityRequest> $request) async {
    return getIdentity($call, await $request);
  }

  $async.Future<$0.App> updateApp_Pre($grpc.ServiceCall $call, $async.Future<$0.UpdateAppRequest> $request) async {
    return updateApp($call, await $request);
  }

  $async.Future<$1.Empty> deleteApp_Pre($grpc.ServiceCall $call, $async.Future<$0.DeleteAppRequest> $request) async {
    return deleteApp($call, await $request);
  }

  $async.Future<$1.Empty> deleteIdentity_Pre($grpc.ServiceCall $call, $async.Future<$0.DeleteIdentityRequest> $request) async {
    return deleteIdentity($call, await $request);
  }

  $async.Future<$0.ListAppsResponse> listApps_Pre($grpc.ServiceCall $call, $async.Future<$0.ListAppsRequest> $request) async {
    return listApps($call, await $request);
  }

  $async.Future<$0.ListIdentitiesResponse> listIdentities_Pre($grpc.ServiceCall $call, $async.Future<$0.ListIdentitiesRequest> $request) async {
    return listIdentities($call, await $request);
  }

  $async.Future<$0.App> createApp($grpc.ServiceCall call, $0.CreateAppRequest request);
  $async.Future<$0.CreateIdentityResponse> createIdentity($grpc.ServiceCall call, $0.CreateIdentityRequest request);
  $async.Future<$0.Identity> activateIdentity($grpc.ServiceCall call, $0.ActivateIdentityRequest request);
  $async.Future<$1.Empty> challengeIdentity($grpc.ServiceCall call, $0.ChallengeIdentityRequest request);
  $async.Future<$1.Empty> verifyIdentity($grpc.ServiceCall call, $0.VerifyIdentityRequest request);
  $async.Future<$0.App> getApp($grpc.ServiceCall call, $0.GetAppRequest request);
  $async.Future<$0.Identity> getIdentity($grpc.ServiceCall call, $0.GetIdentityRequest request);
  $async.Future<$0.App> updateApp($grpc.ServiceCall call, $0.UpdateAppRequest request);
  $async.Future<$1.Empty> deleteApp($grpc.ServiceCall call, $0.DeleteAppRequest request);
  $async.Future<$1.Empty> deleteIdentity($grpc.ServiceCall call, $0.DeleteIdentityRequest request);
  $async.Future<$0.ListAppsResponse> listApps($grpc.ServiceCall call, $0.ListAppsRequest request);
  $async.Future<$0.ListIdentitiesResponse> listIdentities($grpc.ServiceCall call, $0.ListIdentitiesRequest request);
}
