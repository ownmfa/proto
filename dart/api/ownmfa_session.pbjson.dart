//
//  Generated code. Do not modify.
//  source: api/ownmfa_session.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'email'},
    {'1': 'org_name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'orgName'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGQoFZW1haWwYASABKAlCA+BBAlIFZW1haWwSHgoIb3JnX25hbWUYAi'
    'ABKAlCA+BBAlIHb3JnTmFtZRIfCghwYXNzd29yZBgDIAEoCUID4EECUghwYXNzd29yZA==');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'expires_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiresAt'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEhQKBXRva2VuGAEgASgJUgV0b2tlbhI5CgpleHBpcmVzX2F0GAIgAS'
    'gLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZXhwaXJlc0F0');

@$core.Deprecated('Use keyDescriptor instead')
const Key$json = {
  '1': 'Key',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'org_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'orgID'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'role', '3': 4, '4': 1, '5': 14, '6': '.ownmfa.api.Role', '8': {}, '10': 'role'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'createdAt'},
  ],
};

/// Descriptor for `Key`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyDescriptor = $convert.base64Decode(
    'CgNLZXkSEwoCaWQYASABKAlCA+BBA1ICaWQSGgoGb3JnX2lkGAIgASgJQgPgQQNSBW9yZ0lEEi'
    'AKBG5hbWUYAyABKAlCDPpCBnIEEAUYUOBBAlIEbmFtZRI3CgRyb2xlGAQgASgOMhAub3dubWZh'
    'LmFwaS5Sb2xlQhH6QguCAQgYBBgIGAwYD+BBAlIEcm9sZRI+CgpjcmVhdGVkX2F0GAUgASgLMh'
    'ouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEID4EEDUgljcmVhdGVkQXQ=');

@$core.Deprecated('Use createKeyRequestDescriptor instead')
const CreateKeyRequest$json = {
  '1': 'CreateKeyRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.ownmfa.api.Key', '8': {}, '10': 'key'},
  ],
};

/// Descriptor for `CreateKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createKeyRequestDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVLZXlSZXF1ZXN0Ei4KA2tleRgBIAEoCzIPLm93bm1mYS5hcGkuS2V5Qgv6QgWKAQ'
    'IQAeBBAlIDa2V5');

@$core.Deprecated('Use createKeyResponseDescriptor instead')
const CreateKeyResponse$json = {
  '1': 'CreateKeyResponse',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.ownmfa.api.Key', '10': 'key'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `CreateKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createKeyResponseDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVLZXlSZXNwb25zZRIhCgNrZXkYASABKAsyDy5vd25tZmEuYXBpLktleVIDa2V5Eh'
    'QKBXRva2VuGAIgASgJUgV0b2tlbg==');

@$core.Deprecated('Use deleteKeyRequestDescriptor instead')
const DeleteKeyRequest$json = {
  '1': 'DeleteKeyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `DeleteKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteKeyRequestDescriptor = $convert.base64Decode(
    'ChBEZWxldGVLZXlSZXF1ZXN0EhsKAmlkGAEgASgJQgv6QgVyA7ABAeBBAlICaWQ=');

@$core.Deprecated('Use listKeysRequestDescriptor instead')
const ListKeysRequest$json = {
  '1': 'ListKeysRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListKeysRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listKeysRequestDescriptor = $convert.base64Decode(
    'Cg9MaXN0S2V5c1JlcXVlc3QSJQoJcGFnZV9zaXplGAEgASgFQgj6QgUaAxj6AVIIcGFnZVNpem'
    'USHQoKcGFnZV90b2tlbhgCIAEoCVIJcGFnZVRva2Vu');

@$core.Deprecated('Use listKeysResponseDescriptor instead')
const ListKeysResponse$json = {
  '1': 'ListKeysResponse',
  '2': [
    {'1': 'keys', '3': 1, '4': 3, '5': 11, '6': '.ownmfa.api.Key', '10': 'keys'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listKeysResponseDescriptor = $convert.base64Decode(
    'ChBMaXN0S2V5c1Jlc3BvbnNlEiMKBGtleXMYASADKAsyDy5vd25tZmEuYXBpLktleVIEa2V5cx'
    'ImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4SHQoKdG90YWxfc2l6ZRgD'
    'IAEoBVIJdG90YWxTaXpl');

