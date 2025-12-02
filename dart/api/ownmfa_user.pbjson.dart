// This is a generated file - do not edit.
//
// Generated from api/ownmfa_user.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'org_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'orgID'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'email'},
    {
      '1': 'role',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.ownmfa.api.Role',
      '8': {},
      '10': 'role'
    },
    {
      '1': 'status',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.ownmfa.api.Status',
      '8': {},
      '10': 'status'
    },
    {
      '1': 'created_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'createdAt'
    },
    {
      '1': 'updated_at',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'updatedAt'
    },
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhMKAmlkGAEgASgJQgPgQQNSAmlkEhoKBm9yZ19pZBgCIAEoCUID4EEDUgVvcmdJRB'
    'IdCgRuYW1lGAMgASgJQgn6QgZyBBAFGFBSBG5hbWUSHQoFZW1haWwYBCABKAlCB/pCBHICYAFS'
    'BWVtYWlsEjQKBHJvbGUYBSABKA4yEC5vd25tZmEuYXBpLlJvbGVCDvpCC4IBCBgEGAgYDBgPUg'
    'Ryb2xlEjYKBnN0YXR1cxgGIAEoDjISLm93bm1mYS5hcGkuU3RhdHVzQgr6QgeCAQQYAxgGUgZz'
    'dGF0dXMSPgoKY3JlYXRlZF9hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCA+'
    'BBA1IJY3JlYXRlZEF0Ej4KCnVwZGF0ZWRfYXQYCCABKAsyGi5nb29nbGUucHJvdG9idWYuVGlt'
    'ZXN0YW1wQgPgQQNSCXVwZGF0ZWRBdA==');

@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = {
  '1': 'CreateUserRequest',
  '2': [
    {
      '1': 'user',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.User',
      '8': {},
      '10': 'user'
    },
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBIxCgR1c2VyGAEgASgLMhAub3dubWZhLmFwaS5Vc2VyQgv6Qg'
    'WKAQIQAeBBAlIEdXNlcg==');

@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = {
  '1': 'GetUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRVc2VyUmVxdWVzdBIbCgJpZBgBIAEoCUIL+kIFcgOwAQHgQQJSAmlk');

@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = {
  '1': 'UpdateUserRequest',
  '2': [
    {
      '1': 'user',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.User',
      '8': {},
      '10': 'user'
    },
    {
      '1': 'update_mask',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FieldMask',
      '10': 'updateMask'
    },
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VyUmVxdWVzdBIxCgR1c2VyGAEgASgLMhAub3dubWZhLmFwaS5Vc2VyQgv6Qg'
    'WKAQIQAeBBAlIEdXNlchI7Cgt1cGRhdGVfbWFzaxgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5G'
    'aWVsZE1hc2tSCnVwZGF0ZU1hc2s=');

@$core.Deprecated('Use updateUserPasswordRequestDescriptor instead')
const UpdateUserPasswordRequest$json = {
  '1': 'UpdateUserPasswordRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'password'},
  ],
};

/// Descriptor for `UpdateUserPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserPasswordRequestDescriptor =
    $convert.base64Decode(
        'ChlVcGRhdGVVc2VyUGFzc3dvcmRSZXF1ZXN0EhsKAmlkGAEgASgJQgv6QgVyA7ABAeBBA1ICaW'
        'QSKAoIcGFzc3dvcmQYAiABKAlCDPpCBnIEEAoYZOBBAlIIcGFzc3dvcmQ=');

@$core.Deprecated('Use deleteUserRequestDescriptor instead')
const DeleteUserRequest$json = {
  '1': 'DeleteUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `DeleteUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVVc2VyUmVxdWVzdBIbCgJpZBgBIAEoCUIL+kIFcgOwAQHgQQJSAmlk');

@$core.Deprecated('Use listUsersRequestDescriptor instead')
const ListUsersRequest$json = {
  '1': 'ListUsersRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListUsersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUsersRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0VXNlcnNSZXF1ZXN0EiUKCXBhZ2Vfc2l6ZRgBIAEoBUII+kIFGgMY+gFSCHBhZ2VTaX'
    'plEh0KCnBhZ2VfdG9rZW4YAiABKAlSCXBhZ2VUb2tlbg==');

@$core.Deprecated('Use listUsersResponseDescriptor instead')
const ListUsersResponse$json = {
  '1': 'ListUsersResponse',
  '2': [
    {
      '1': 'users',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.ownmfa.api.User',
      '10': 'users'
    },
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListUsersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUsersResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0VXNlcnNSZXNwb25zZRImCgV1c2VycxgBIAMoCzIQLm93bm1mYS5hcGkuVXNlclIFdX'
    'NlcnMSJgoPbmV4dF9wYWdlX3Rva2VuGAIgASgJUg1uZXh0UGFnZVRva2VuEh0KCnRvdGFsX3Np'
    'emUYAyABKAVSCXRvdGFsU2l6ZQ==');
