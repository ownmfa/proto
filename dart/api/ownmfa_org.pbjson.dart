// This is a generated file - do not edit.
//
// Generated from api/ownmfa_org.proto.

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

@$core.Deprecated('Use planDescriptor instead')
const Plan$json = {
  '1': 'Plan',
  '2': [
    {'1': 'PLAN_UNSPECIFIED', '2': 0},
    {'1': 'PAYMENT_FAIL', '2': 3},
    {'1': 'STARTER', '2': 6},
    {'1': 'PRO', '2': 9},
    {'1': 'ENTERPRISE', '2': 12},
  ],
};

/// Descriptor for `Plan`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List planDescriptor = $convert.base64Decode(
    'CgRQbGFuEhQKEFBMQU5fVU5TUEVDSUZJRUQQABIQCgxQQVlNRU5UX0ZBSUwQAxILCgdTVEFSVE'
    'VSEAYSBwoDUFJPEAkSDgoKRU5URVJQUklTRRAM');

@$core.Deprecated('Use orgDescriptor instead')
const Org$json = {
  '1': 'Org',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'status',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.ownmfa.api.Status',
      '8': {},
      '10': 'status'
    },
    {
      '1': 'plan',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.ownmfa.api.Plan',
      '8': {},
      '10': 'plan'
    },
    {
      '1': 'created_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'createdAt'
    },
    {
      '1': 'updated_at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'updatedAt'
    },
  ],
};

/// Descriptor for `Org`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orgDescriptor = $convert.base64Decode(
    'CgNPcmcSEwoCaWQYASABKAlCA+BBA1ICaWQSHQoEbmFtZRgCIAEoCUIJ+kIGcgQQBRgoUgRuYW'
    '1lEjYKBnN0YXR1cxgFIAEoDjISLm93bm1mYS5hcGkuU3RhdHVzQgr6QgeCAQQYAxgGUgZzdGF0'
    'dXMSKQoEcGxhbhgGIAEoDjIQLm93bm1mYS5hcGkuUGxhbkID4EEDUgRwbGFuEj4KCmNyZWF0ZW'
    'RfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgPgQQNSCWNyZWF0ZWRBdBI+'
    'Cgp1cGRhdGVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEID4EEDUgl1cG'
    'RhdGVkQXQ=');

@$core.Deprecated('Use createOrgRequestDescriptor instead')
const CreateOrgRequest$json = {
  '1': 'CreateOrgRequest',
  '2': [
    {
      '1': 'org',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.Org',
      '8': {},
      '10': 'org'
    },
  ],
};

/// Descriptor for `CreateOrgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrgRequestDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVPcmdSZXF1ZXN0Ei4KA29yZxgBIAEoCzIPLm93bm1mYS5hcGkuT3JnQgv6QgWKAQ'
    'IQAeBBAlIDb3Jn');

@$core.Deprecated('Use getOrgRequestDescriptor instead')
const GetOrgRequest$json = {
  '1': 'GetOrgRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `GetOrgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrgRequestDescriptor = $convert.base64Decode(
    'Cg1HZXRPcmdSZXF1ZXN0EhsKAmlkGAEgASgJQgv6QgVyA7ABAeBBAlICaWQ=');

@$core.Deprecated('Use updateOrgRequestDescriptor instead')
const UpdateOrgRequest$json = {
  '1': 'UpdateOrgRequest',
  '2': [
    {
      '1': 'org',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.Org',
      '8': {},
      '10': 'org'
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

/// Descriptor for `UpdateOrgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrgRequestDescriptor = $convert.base64Decode(
    'ChBVcGRhdGVPcmdSZXF1ZXN0Ei4KA29yZxgBIAEoCzIPLm93bm1mYS5hcGkuT3JnQgv6QgWKAQ'
    'IQAeBBAlIDb3JnEjsKC3VwZGF0ZV9tYXNrGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxk'
    'TWFza1IKdXBkYXRlTWFzaw==');

@$core.Deprecated('Use deleteOrgRequestDescriptor instead')
const DeleteOrgRequest$json = {
  '1': 'DeleteOrgRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `DeleteOrgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteOrgRequestDescriptor = $convert.base64Decode(
    'ChBEZWxldGVPcmdSZXF1ZXN0EhsKAmlkGAEgASgJQgv6QgVyA7ABAeBBAlICaWQ=');

@$core.Deprecated('Use listOrgsRequestDescriptor instead')
const ListOrgsRequest$json = {
  '1': 'ListOrgsRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListOrgsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOrgsRequestDescriptor = $convert.base64Decode(
    'Cg9MaXN0T3Jnc1JlcXVlc3QSJQoJcGFnZV9zaXplGAEgASgFQgj6QgUaAxj6AVIIcGFnZVNpem'
    'USHQoKcGFnZV90b2tlbhgCIAEoCVIJcGFnZVRva2Vu');

@$core.Deprecated('Use listOrgsResponseDescriptor instead')
const ListOrgsResponse$json = {
  '1': 'ListOrgsResponse',
  '2': [
    {
      '1': 'orgs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.ownmfa.api.Org',
      '10': 'orgs'
    },
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListOrgsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOrgsResponseDescriptor = $convert.base64Decode(
    'ChBMaXN0T3Jnc1Jlc3BvbnNlEiMKBG9yZ3MYASADKAsyDy5vd25tZmEuYXBpLk9yZ1IEb3Jncx'
    'ImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4SHQoKdG90YWxfc2l6ZRgD'
    'IAEoBVIJdG90YWxTaXpl');
