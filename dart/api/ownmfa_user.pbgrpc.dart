// This is a generated file - do not edit.
//
// Generated from api/ownmfa_user.proto.

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

import 'ownmfa_user.pb.dart' as $0;

export 'ownmfa_user.pb.dart';

/// UserService contains functions to query and modify users.
@$pb.GrpcServiceName('ownmfa.api.UserService')
class UserServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  UserServiceClient(super.channel, {super.options, super.interceptors});

  /// Create a user. Users can log in and use the Hermes API and OwnMFA website based on the limits of their role.
  $grpc.ResponseFuture<$0.User> createUser(
    $0.CreateUserRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  /// Get a user by ID. Users can log in and use the Hermes API and OwnMFA website based on the limits of their role.
  $grpc.ResponseFuture<$0.User> getUser(
    $0.GetUserRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  /// Update a user. Users can log in and use the Hermes API and OwnMFA website based on the limits of their role.
  $grpc.ResponseFuture<$0.User> updateUser(
    $0.UpdateUserRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  /// Update a user's password. Passwords are checked against NIST password guidelines.
  $grpc.ResponseFuture<$1.Empty> updateUserPassword(
    $0.UpdateUserPasswordRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateUserPassword, request, options: options);
  }

  /// Delete a user by ID. Users can log in and use the Hermes API and OwnMFA website based on the limits of their role.
  $grpc.ResponseFuture<$1.Empty> deleteUser(
    $0.DeleteUserRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  /// List users. Users can log in and use the Hermes API and OwnMFA website based on the limits of their role.
  $grpc.ResponseFuture<$0.ListUsersResponse> listUsers(
    $0.ListUsersRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listUsers, request, options: options);
  }

  // method descriptors

  static final _$createUser = $grpc.ClientMethod<$0.CreateUserRequest, $0.User>(
      '/ownmfa.api.UserService/CreateUser',
      ($0.CreateUserRequest value) => value.writeToBuffer(),
      $0.User.fromBuffer);
  static final _$getUser = $grpc.ClientMethod<$0.GetUserRequest, $0.User>(
      '/ownmfa.api.UserService/GetUser',
      ($0.GetUserRequest value) => value.writeToBuffer(),
      $0.User.fromBuffer);
  static final _$updateUser = $grpc.ClientMethod<$0.UpdateUserRequest, $0.User>(
      '/ownmfa.api.UserService/UpdateUser',
      ($0.UpdateUserRequest value) => value.writeToBuffer(),
      $0.User.fromBuffer);
  static final _$updateUserPassword =
      $grpc.ClientMethod<$0.UpdateUserPasswordRequest, $1.Empty>(
          '/ownmfa.api.UserService/UpdateUserPassword',
          ($0.UpdateUserPasswordRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$deleteUser =
      $grpc.ClientMethod<$0.DeleteUserRequest, $1.Empty>(
          '/ownmfa.api.UserService/DeleteUser',
          ($0.DeleteUserRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$listUsers =
      $grpc.ClientMethod<$0.ListUsersRequest, $0.ListUsersResponse>(
          '/ownmfa.api.UserService/ListUsers',
          ($0.ListUsersRequest value) => value.writeToBuffer(),
          $0.ListUsersResponse.fromBuffer);
}

@$pb.GrpcServiceName('ownmfa.api.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'ownmfa.api.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateUserRequest, $0.User>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateUserRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUserRequest, $0.User>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUserRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserRequest, $0.User>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUserRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserPasswordRequest, $1.Empty>(
        'UpdateUserPassword',
        updateUserPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateUserPasswordRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteUserRequest, $1.Empty>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteUserRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListUsersRequest, $0.ListUsersResponse>(
        'ListUsers',
        listUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListUsersRequest.fromBuffer(value),
        ($0.ListUsersResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.User> createUser_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateUserRequest> $request) async {
    return createUser($call, await $request);
  }

  $async.Future<$0.User> createUser(
      $grpc.ServiceCall call, $0.CreateUserRequest request);

  $async.Future<$0.User> getUser_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetUserRequest> $request) async {
    return getUser($call, await $request);
  }

  $async.Future<$0.User> getUser(
      $grpc.ServiceCall call, $0.GetUserRequest request);

  $async.Future<$0.User> updateUser_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateUserRequest> $request) async {
    return updateUser($call, await $request);
  }

  $async.Future<$0.User> updateUser(
      $grpc.ServiceCall call, $0.UpdateUserRequest request);

  $async.Future<$1.Empty> updateUserPassword_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateUserPasswordRequest> $request) async {
    return updateUserPassword($call, await $request);
  }

  $async.Future<$1.Empty> updateUserPassword(
      $grpc.ServiceCall call, $0.UpdateUserPasswordRequest request);

  $async.Future<$1.Empty> deleteUser_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteUserRequest> $request) async {
    return deleteUser($call, await $request);
  }

  $async.Future<$1.Empty> deleteUser(
      $grpc.ServiceCall call, $0.DeleteUserRequest request);

  $async.Future<$0.ListUsersResponse> listUsers_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ListUsersRequest> $request) async {
    return listUsers($call, await $request);
  }

  $async.Future<$0.ListUsersResponse> listUsers(
      $grpc.ServiceCall call, $0.ListUsersRequest request);
}
