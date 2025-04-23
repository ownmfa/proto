//
//  Generated code. Do not modify.
//  source: api/ownmfa_org.proto
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
import 'ownmfa_org.pb.dart' as $3;

export 'ownmfa_org.pb.dart';

@$pb.GrpcServiceName('ownmfa.api.OrgService')
class OrgServiceClient extends $grpc.Client {
  static final _$createOrg = $grpc.ClientMethod<$3.CreateOrgRequest, $3.Org>(
      '/ownmfa.api.OrgService/CreateOrg',
      ($3.CreateOrgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Org.fromBuffer(value));
  static final _$getOrg = $grpc.ClientMethod<$3.GetOrgRequest, $3.Org>(
      '/ownmfa.api.OrgService/GetOrg',
      ($3.GetOrgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Org.fromBuffer(value));
  static final _$updateOrg = $grpc.ClientMethod<$3.UpdateOrgRequest, $3.Org>(
      '/ownmfa.api.OrgService/UpdateOrg',
      ($3.UpdateOrgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Org.fromBuffer(value));
  static final _$deleteOrg = $grpc.ClientMethod<$3.DeleteOrgRequest, $1.Empty>(
      '/ownmfa.api.OrgService/DeleteOrg',
      ($3.DeleteOrgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$listOrgs = $grpc.ClientMethod<$3.ListOrgsRequest, $3.ListOrgsResponse>(
      '/ownmfa.api.OrgService/ListOrgs',
      ($3.ListOrgsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListOrgsResponse.fromBuffer(value));

  OrgServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.Org> createOrg($3.CreateOrgRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrg, request, options: options);
  }

  $grpc.ResponseFuture<$3.Org> getOrg($3.GetOrgRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrg, request, options: options);
  }

  $grpc.ResponseFuture<$3.Org> updateOrg($3.UpdateOrgRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrg, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteOrg($3.DeleteOrgRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrg, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListOrgsResponse> listOrgs($3.ListOrgsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listOrgs, request, options: options);
  }
}

@$pb.GrpcServiceName('ownmfa.api.OrgService')
abstract class OrgServiceBase extends $grpc.Service {
  $core.String get $name => 'ownmfa.api.OrgService';

  OrgServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateOrgRequest, $3.Org>(
        'CreateOrg',
        createOrg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateOrgRequest.fromBuffer(value),
        ($3.Org value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetOrgRequest, $3.Org>(
        'GetOrg',
        getOrg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetOrgRequest.fromBuffer(value),
        ($3.Org value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateOrgRequest, $3.Org>(
        'UpdateOrg',
        updateOrg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateOrgRequest.fromBuffer(value),
        ($3.Org value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteOrgRequest, $1.Empty>(
        'DeleteOrg',
        deleteOrg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteOrgRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListOrgsRequest, $3.ListOrgsResponse>(
        'ListOrgs',
        listOrgs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListOrgsRequest.fromBuffer(value),
        ($3.ListOrgsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.Org> createOrg_Pre($grpc.ServiceCall $call, $async.Future<$3.CreateOrgRequest> $request) async {
    return createOrg($call, await $request);
  }

  $async.Future<$3.Org> getOrg_Pre($grpc.ServiceCall $call, $async.Future<$3.GetOrgRequest> $request) async {
    return getOrg($call, await $request);
  }

  $async.Future<$3.Org> updateOrg_Pre($grpc.ServiceCall $call, $async.Future<$3.UpdateOrgRequest> $request) async {
    return updateOrg($call, await $request);
  }

  $async.Future<$1.Empty> deleteOrg_Pre($grpc.ServiceCall $call, $async.Future<$3.DeleteOrgRequest> $request) async {
    return deleteOrg($call, await $request);
  }

  $async.Future<$3.ListOrgsResponse> listOrgs_Pre($grpc.ServiceCall $call, $async.Future<$3.ListOrgsRequest> $request) async {
    return listOrgs($call, await $request);
  }

  $async.Future<$3.Org> createOrg($grpc.ServiceCall call, $3.CreateOrgRequest request);
  $async.Future<$3.Org> getOrg($grpc.ServiceCall call, $3.GetOrgRequest request);
  $async.Future<$3.Org> updateOrg($grpc.ServiceCall call, $3.UpdateOrgRequest request);
  $async.Future<$1.Empty> deleteOrg($grpc.ServiceCall call, $3.DeleteOrgRequest request);
  $async.Future<$3.ListOrgsResponse> listOrgs($grpc.ServiceCall call, $3.ListOrgsRequest request);
}
