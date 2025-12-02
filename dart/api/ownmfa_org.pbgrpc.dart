// This is a generated file - do not edit.
//
// Generated from api/ownmfa_org.proto.

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

import 'ownmfa_org.pb.dart' as $0;

export 'ownmfa_org.pb.dart';

/// OrgService contains functions to query and modify organizations.
@$pb.GrpcServiceName('ownmfa.api.OrgService')
class OrgServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  OrgServiceClient(super.channel, {super.options, super.interceptors});

  /// Create an organization. An organization is the top level resource and contains users, applications, and derived resources.
  $grpc.ResponseFuture<$0.Org> createOrg(
    $0.CreateOrgRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createOrg, request, options: options);
  }

  /// Get an organization by ID. An organization is the top level resource and contains users, applications, and derived resources.
  $grpc.ResponseFuture<$0.Org> getOrg(
    $0.GetOrgRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getOrg, request, options: options);
  }

  /// Update an organization. An organization is the top level resource and contains users, applications, and derived resources.
  $grpc.ResponseFuture<$0.Org> updateOrg(
    $0.UpdateOrgRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateOrg, request, options: options);
  }

  /// Delete an organization by ID. An organization is the top level resource and contains users, applications, and derived resources.
  $grpc.ResponseFuture<$1.Empty> deleteOrg(
    $0.DeleteOrgRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteOrg, request, options: options);
  }

  /// List all organizations. An organization is the top level resource and contains users, applications, and derived resources.
  $grpc.ResponseFuture<$0.ListOrgsResponse> listOrgs(
    $0.ListOrgsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listOrgs, request, options: options);
  }

  // method descriptors

  static final _$createOrg = $grpc.ClientMethod<$0.CreateOrgRequest, $0.Org>(
      '/ownmfa.api.OrgService/CreateOrg',
      ($0.CreateOrgRequest value) => value.writeToBuffer(),
      $0.Org.fromBuffer);
  static final _$getOrg = $grpc.ClientMethod<$0.GetOrgRequest, $0.Org>(
      '/ownmfa.api.OrgService/GetOrg',
      ($0.GetOrgRequest value) => value.writeToBuffer(),
      $0.Org.fromBuffer);
  static final _$updateOrg = $grpc.ClientMethod<$0.UpdateOrgRequest, $0.Org>(
      '/ownmfa.api.OrgService/UpdateOrg',
      ($0.UpdateOrgRequest value) => value.writeToBuffer(),
      $0.Org.fromBuffer);
  static final _$deleteOrg = $grpc.ClientMethod<$0.DeleteOrgRequest, $1.Empty>(
      '/ownmfa.api.OrgService/DeleteOrg',
      ($0.DeleteOrgRequest value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
  static final _$listOrgs =
      $grpc.ClientMethod<$0.ListOrgsRequest, $0.ListOrgsResponse>(
          '/ownmfa.api.OrgService/ListOrgs',
          ($0.ListOrgsRequest value) => value.writeToBuffer(),
          $0.ListOrgsResponse.fromBuffer);
}

@$pb.GrpcServiceName('ownmfa.api.OrgService')
abstract class OrgServiceBase extends $grpc.Service {
  $core.String get $name => 'ownmfa.api.OrgService';

  OrgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateOrgRequest, $0.Org>(
        'CreateOrg',
        createOrg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateOrgRequest.fromBuffer(value),
        ($0.Org value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOrgRequest, $0.Org>(
        'GetOrg',
        getOrg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetOrgRequest.fromBuffer(value),
        ($0.Org value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateOrgRequest, $0.Org>(
        'UpdateOrg',
        updateOrg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateOrgRequest.fromBuffer(value),
        ($0.Org value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteOrgRequest, $1.Empty>(
        'DeleteOrg',
        deleteOrg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteOrgRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListOrgsRequest, $0.ListOrgsResponse>(
        'ListOrgs',
        listOrgs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListOrgsRequest.fromBuffer(value),
        ($0.ListOrgsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Org> createOrg_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateOrgRequest> $request) async {
    return createOrg($call, await $request);
  }

  $async.Future<$0.Org> createOrg(
      $grpc.ServiceCall call, $0.CreateOrgRequest request);

  $async.Future<$0.Org> getOrg_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.GetOrgRequest> $request) async {
    return getOrg($call, await $request);
  }

  $async.Future<$0.Org> getOrg(
      $grpc.ServiceCall call, $0.GetOrgRequest request);

  $async.Future<$0.Org> updateOrg_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateOrgRequest> $request) async {
    return updateOrg($call, await $request);
  }

  $async.Future<$0.Org> updateOrg(
      $grpc.ServiceCall call, $0.UpdateOrgRequest request);

  $async.Future<$1.Empty> deleteOrg_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteOrgRequest> $request) async {
    return deleteOrg($call, await $request);
  }

  $async.Future<$1.Empty> deleteOrg(
      $grpc.ServiceCall call, $0.DeleteOrgRequest request);

  $async.Future<$0.ListOrgsResponse> listOrgs_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ListOrgsRequest> $request) async {
    return listOrgs($call, await $request);
  }

  $async.Future<$0.ListOrgsResponse> listOrgs(
      $grpc.ServiceCall call, $0.ListOrgsRequest request);
}
