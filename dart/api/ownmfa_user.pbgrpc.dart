//
//  Generated code. Do not modify.
//  source: api/ownmfa_user.proto
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
import 'ownmfa_user.pb.dart' as $5;

export 'ownmfa_user.pb.dart';

@$pb.GrpcServiceName('ownmfa.api.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$5.CreateUserRequest, $5.User>(
      '/ownmfa.api.UserService/CreateUser',
      ($5.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.User.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$5.GetUserRequest, $5.User>(
      '/ownmfa.api.UserService/GetUser',
      ($5.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.User.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$5.UpdateUserRequest, $5.User>(
      '/ownmfa.api.UserService/UpdateUser',
      ($5.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.User.fromBuffer(value));
  static final _$updateUserPassword = $grpc.ClientMethod<$5.UpdateUserPasswordRequest, $1.Empty>(
      '/ownmfa.api.UserService/UpdateUserPassword',
      ($5.UpdateUserPasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$5.DeleteUserRequest, $1.Empty>(
      '/ownmfa.api.UserService/DeleteUser',
      ($5.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$listUsers = $grpc.ClientMethod<$5.ListUsersRequest, $5.ListUsersResponse>(
      '/ownmfa.api.UserService/ListUsers',
      ($5.ListUsersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListUsersResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.User> createUser($5.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.User> getUser($5.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.User> updateUser($5.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateUserPassword($5.UpdateUserPasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserPassword, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteUser($5.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListUsersResponse> listUsers($5.ListUsersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listUsers, request, options: options);
  }
}

@$pb.GrpcServiceName('ownmfa.api.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'ownmfa.api.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateUserRequest, $5.User>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateUserRequest.fromBuffer(value),
        ($5.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetUserRequest, $5.User>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetUserRequest.fromBuffer(value),
        ($5.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateUserRequest, $5.User>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateUserRequest.fromBuffer(value),
        ($5.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateUserPasswordRequest, $1.Empty>(
        'UpdateUserPassword',
        updateUserPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateUserPasswordRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteUserRequest, $1.Empty>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteUserRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListUsersRequest, $5.ListUsersResponse>(
        'ListUsers',
        listUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListUsersRequest.fromBuffer(value),
        ($5.ListUsersResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.User> createUser_Pre($grpc.ServiceCall $call, $async.Future<$5.CreateUserRequest> $request) async {
    return createUser($call, await $request);
  }

  $async.Future<$5.User> getUser_Pre($grpc.ServiceCall $call, $async.Future<$5.GetUserRequest> $request) async {
    return getUser($call, await $request);
  }

  $async.Future<$5.User> updateUser_Pre($grpc.ServiceCall $call, $async.Future<$5.UpdateUserRequest> $request) async {
    return updateUser($call, await $request);
  }

  $async.Future<$1.Empty> updateUserPassword_Pre($grpc.ServiceCall $call, $async.Future<$5.UpdateUserPasswordRequest> $request) async {
    return updateUserPassword($call, await $request);
  }

  $async.Future<$1.Empty> deleteUser_Pre($grpc.ServiceCall $call, $async.Future<$5.DeleteUserRequest> $request) async {
    return deleteUser($call, await $request);
  }

  $async.Future<$5.ListUsersResponse> listUsers_Pre($grpc.ServiceCall $call, $async.Future<$5.ListUsersRequest> $request) async {
    return listUsers($call, await $request);
  }

  $async.Future<$5.User> createUser($grpc.ServiceCall call, $5.CreateUserRequest request);
  $async.Future<$5.User> getUser($grpc.ServiceCall call, $5.GetUserRequest request);
  $async.Future<$5.User> updateUser($grpc.ServiceCall call, $5.UpdateUserRequest request);
  $async.Future<$1.Empty> updateUserPassword($grpc.ServiceCall call, $5.UpdateUserPasswordRequest request);
  $async.Future<$1.Empty> deleteUser($grpc.ServiceCall call, $5.DeleteUserRequest request);
  $async.Future<$5.ListUsersResponse> listUsers($grpc.ServiceCall call, $5.ListUsersRequest request);
}
