//
//  Generated code. Do not modify.
//  source: api/ownmfa_role.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use roleDescriptor instead')
const Role$json = {
  '1': 'Role',
  '2': [
    {'1': 'ROLE_UNSPECIFIED', '2': 0},
    {'1': 'VIEWER', '2': 4},
    {'1': 'AUTHENTICATOR', '2': 8},
    {'1': 'ADMIN', '2': 12},
    {'1': 'SYS_ADMIN', '2': 15},
  ],
};

/// Descriptor for `Role`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roleDescriptor = $convert.base64Decode(
    'CgRSb2xlEhQKEFJPTEVfVU5TUEVDSUZJRUQQABIKCgZWSUVXRVIQBBIRCg1BVVRIRU5USUNBVE'
    '9SEAgSCQoFQURNSU4QDBINCglTWVNfQURNSU4QDw==');

