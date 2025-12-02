// This is a generated file - do not edit.
//
// Generated from api/ownmfa_app_identity.proto.

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

@$core.Deprecated('Use identityStatusDescriptor instead')
const IdentityStatus$json = {
  '1': 'IdentityStatus',
  '2': [
    {'1': 'UNVERIFIED', '2': 0},
    {'1': 'ACTIVATED', '2': 3},
  ],
};

/// Descriptor for `IdentityStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List identityStatusDescriptor = $convert.base64Decode(
    'Cg5JZGVudGl0eVN0YXR1cxIOCgpVTlZFUklGSUVEEAASDQoJQUNUSVZBVEVEEAM=');

@$core.Deprecated('Use hashDescriptor instead')
const Hash$json = {
  '1': 'Hash',
  '2': [
    {'1': 'SHA512', '2': 0},
    {'1': 'SHA256', '2': 1},
    {'1': 'SHA1', '2': 2},
  ],
};

/// Descriptor for `Hash`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List hashDescriptor = $convert
    .base64Decode('CgRIYXNoEgoKBlNIQTUxMhAAEgoKBlNIQTI1NhABEggKBFNIQTEQAg==');

@$core.Deprecated('Use appDescriptor instead')
const App$json = {
  '1': 'App',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'org_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'orgID'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'display_name', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'displayName'},
    {'1': 'email', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'email'},
    {'1': 'pushover_key', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'pushoverKey'},
    {
      '1': 'subject_template',
      '3': 7,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'subjectTemplate'
    },
    {
      '1': 'text_body_template',
      '3': 8,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'textBodyTemplate'
    },
    {
      '1': 'html_body_template',
      '3': 9,
      '4': 1,
      '5': 12,
      '8': {},
      '10': 'htmlBodyTemplate'
    },
    {
      '1': 'created_at',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'createdAt'
    },
    {
      '1': 'updated_at',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'updatedAt'
    },
  ],
};

/// Descriptor for `App`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appDescriptor = $convert.base64Decode(
    'CgNBcHASEwoCaWQYASABKAlCA+BBA1ICaWQSGgoGb3JnX2lkGAIgASgJQgPgQQNSBW9yZ0lEEh'
    '0KBG5hbWUYAyABKAlCCfpCBnIEEAUYKFIEbmFtZRIsCgxkaXNwbGF5X25hbWUYBCABKAlCCfpC'
    'BnIEEAUYUFILZGlzcGxheU5hbWUSIAoFZW1haWwYBSABKAlCCvpCB3IFYAHQAQFSBWVtYWlsEi'
    'oKDHB1c2hvdmVyX2tleRgGIAEoCUIH+kIEcgIYLVILcHVzaG92ZXJLZXkSMwoQc3ViamVjdF90'
    'ZW1wbGF0ZRgHIAEoCUII+kIFcgMYgAhSD3N1YmplY3RUZW1wbGF0ZRI2ChJ0ZXh0X2JvZHlfdG'
    'VtcGxhdGUYCCABKAlCCPpCBXIDGIAgUhB0ZXh0Qm9keVRlbXBsYXRlEjYKEmh0bWxfYm9keV90'
    'ZW1wbGF0ZRgJIAEoDEII+kIFegMYgCBSEGh0bWxCb2R5VGVtcGxhdGUSPgoKY3JlYXRlZF9hdB'
    'gKIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCA+BBA1IJY3JlYXRlZEF0Ej4KCnVw'
    'ZGF0ZWRfYXQYCyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgPgQQNSCXVwZGF0ZW'
    'RBdA==');

@$core.Deprecated('Use createAppRequestDescriptor instead')
const CreateAppRequest$json = {
  '1': 'CreateAppRequest',
  '2': [
    {
      '1': 'app',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.App',
      '8': {},
      '10': 'app'
    },
  ],
};

/// Descriptor for `CreateAppRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAppRequestDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVBcHBSZXF1ZXN0Ei4KA2FwcBgBIAEoCzIPLm93bm1mYS5hcGkuQXBwQgv6QgWKAQ'
    'IQAeBBAlIDYXBw');

@$core.Deprecated('Use getAppRequestDescriptor instead')
const GetAppRequest$json = {
  '1': 'GetAppRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `GetAppRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAppRequestDescriptor = $convert.base64Decode(
    'Cg1HZXRBcHBSZXF1ZXN0EhsKAmlkGAEgASgJQgv6QgVyA7ABAeBBAlICaWQ=');

@$core.Deprecated('Use updateAppRequestDescriptor instead')
const UpdateAppRequest$json = {
  '1': 'UpdateAppRequest',
  '2': [
    {
      '1': 'app',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.App',
      '8': {},
      '10': 'app'
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

/// Descriptor for `UpdateAppRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAppRequestDescriptor = $convert.base64Decode(
    'ChBVcGRhdGVBcHBSZXF1ZXN0Ei4KA2FwcBgBIAEoCzIPLm93bm1mYS5hcGkuQXBwQgv6QgWKAQ'
    'IQAeBBAlIDYXBwEjsKC3VwZGF0ZV9tYXNrGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxk'
    'TWFza1IKdXBkYXRlTWFzaw==');

@$core.Deprecated('Use deleteAppRequestDescriptor instead')
const DeleteAppRequest$json = {
  '1': 'DeleteAppRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `DeleteAppRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAppRequestDescriptor = $convert.base64Decode(
    'ChBEZWxldGVBcHBSZXF1ZXN0EhsKAmlkGAEgASgJQgv6QgVyA7ABAeBBAlICaWQ=');

@$core.Deprecated('Use listAppsRequestDescriptor instead')
const ListAppsRequest$json = {
  '1': 'ListAppsRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListAppsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAppsRequestDescriptor = $convert.base64Decode(
    'Cg9MaXN0QXBwc1JlcXVlc3QSJQoJcGFnZV9zaXplGAEgASgFQgj6QgUaAxj6AVIIcGFnZVNpem'
    'USHQoKcGFnZV90b2tlbhgCIAEoCVIJcGFnZVRva2Vu');

@$core.Deprecated('Use listAppsResponseDescriptor instead')
const ListAppsResponse$json = {
  '1': 'ListAppsResponse',
  '2': [
    {
      '1': 'apps',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.ownmfa.api.App',
      '10': 'apps'
    },
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListAppsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAppsResponseDescriptor = $convert.base64Decode(
    'ChBMaXN0QXBwc1Jlc3BvbnNlEiMKBGFwcHMYASADKAsyDy5vd25tZmEuYXBpLkFwcFIEYXBwcx'
    'ImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4SHQoKdG90YWxfc2l6ZRgD'
    'IAEoBVIJdG90YWxTaXpl');

@$core.Deprecated('Use softwareHOTPMethodDescriptor instead')
const SoftwareHOTPMethod$json = {
  '1': 'SoftwareHOTPMethod',
  '2': [
    {
      '1': 'hash',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.ownmfa.api.Hash',
      '10': 'hash'
    },
    {'1': 'digits', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'digits'},
    {'1': 'counter', '3': 3, '4': 1, '5': 5, '10': 'counter'},
    {'1': 'account_name', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'accountName'},
  ],
};

/// Descriptor for `SoftwareHOTPMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List softwareHOTPMethodDescriptor = $convert.base64Decode(
    'ChJTb2Z0d2FyZUhPVFBNZXRob2QSJAoEaGFzaBgBIAEoDjIQLm93bm1mYS5hcGkuSGFzaFIEaG'
    'FzaBIjCgZkaWdpdHMYAiABKAVCC/pCCBoGGAooBkABUgZkaWdpdHMSGAoHY291bnRlchgDIAEo'
    'BVIHY291bnRlchIqCgxhY2NvdW50X25hbWUYBCABKAlCB/pCBHICGFBSC2FjY291bnROYW1l');

@$core.Deprecated('Use softwareTOTPMethodDescriptor instead')
const SoftwareTOTPMethod$json = {
  '1': 'SoftwareTOTPMethod',
  '2': [
    {
      '1': 'hash',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.ownmfa.api.Hash',
      '10': 'hash'
    },
    {'1': 'digits', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'digits'},
    {'1': 'account_name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'accountName'},
  ],
};

/// Descriptor for `SoftwareTOTPMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List softwareTOTPMethodDescriptor = $convert.base64Decode(
    'ChJTb2Z0d2FyZVRPVFBNZXRob2QSJAoEaGFzaBgBIAEoDjIQLm93bm1mYS5hcGkuSGFzaFIEaG'
    'FzaBIjCgZkaWdpdHMYAiABKAVCC/pCCBoGGAooBkABUgZkaWdpdHMSKgoMYWNjb3VudF9uYW1l'
    'GAMgASgJQgf6QgRyAhhQUgthY2NvdW50TmFtZQ==');

@$core.Deprecated('Use googleAuthHOTPMethodDescriptor instead')
const GoogleAuthHOTPMethod$json = {
  '1': 'GoogleAuthHOTPMethod',
  '2': [
    {'1': 'account_name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'accountName'},
  ],
};

/// Descriptor for `GoogleAuthHOTPMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List googleAuthHOTPMethodDescriptor = $convert.base64Decode(
    'ChRHb29nbGVBdXRoSE9UUE1ldGhvZBIqCgxhY2NvdW50X25hbWUYASABKAlCB/pCBHICGFBSC2'
    'FjY291bnROYW1l');

@$core.Deprecated('Use googleAuthTOTPMethodDescriptor instead')
const GoogleAuthTOTPMethod$json = {
  '1': 'GoogleAuthTOTPMethod',
  '2': [
    {'1': 'account_name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'accountName'},
  ],
};

/// Descriptor for `GoogleAuthTOTPMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List googleAuthTOTPMethodDescriptor = $convert.base64Decode(
    'ChRHb29nbGVBdXRoVE9UUE1ldGhvZBIqCgxhY2NvdW50X25hbWUYASABKAlCB/pCBHICGFBSC2'
    'FjY291bnROYW1l');

@$core.Deprecated('Use appleiOSTOTPMethodDescriptor instead')
const AppleiOSTOTPMethod$json = {
  '1': 'AppleiOSTOTPMethod',
};

/// Descriptor for `AppleiOSTOTPMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appleiOSTOTPMethodDescriptor =
    $convert.base64Decode('ChJBcHBsZWlPU1RPVFBNZXRob2Q=');

@$core.Deprecated('Use hardwareHOTPMethodDescriptor instead')
const HardwareHOTPMethod$json = {
  '1': 'HardwareHOTPMethod',
  '2': [
    {
      '1': 'hash',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.ownmfa.api.Hash',
      '10': 'hash'
    },
    {'1': 'digits', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'digits'},
    {'1': 'counter', '3': 3, '4': 1, '5': 5, '10': 'counter'},
    {'1': 'secret', '3': 4, '4': 1, '5': 12, '8': {}, '10': 'secret'},
  ],
};

/// Descriptor for `HardwareHOTPMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hardwareHOTPMethodDescriptor = $convert.base64Decode(
    'ChJIYXJkd2FyZUhPVFBNZXRob2QSJAoEaGFzaBgBIAEoDjIQLm93bm1mYS5hcGkuSGFzaFIEaG'
    'FzaBIhCgZkaWdpdHMYAiABKAVCCfpCBhoEGAooBlIGZGlnaXRzEhgKB2NvdW50ZXIYAyABKAVS'
    'B2NvdW50ZXISHwoGc2VjcmV0GAQgASgMQgf6QgR6AhAQUgZzZWNyZXQ=');

@$core.Deprecated('Use hardwareTOTPMethodDescriptor instead')
const HardwareTOTPMethod$json = {
  '1': 'HardwareTOTPMethod',
  '2': [
    {
      '1': 'hash',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.ownmfa.api.Hash',
      '10': 'hash'
    },
    {'1': 'digits', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'digits'},
    {'1': 'secret', '3': 3, '4': 1, '5': 12, '8': {}, '10': 'secret'},
  ],
};

/// Descriptor for `HardwareTOTPMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hardwareTOTPMethodDescriptor = $convert.base64Decode(
    'ChJIYXJkd2FyZVRPVFBNZXRob2QSJAoEaGFzaBgBIAEoDjIQLm93bm1mYS5hcGkuSGFzaFIEaG'
    'FzaBIhCgZkaWdpdHMYAiABKAVCCfpCBhoEGAooBlIGZGlnaXRzEh8KBnNlY3JldBgDIAEoDEIH'
    '+kIEegIQEFIGc2VjcmV0');

@$core.Deprecated('Use sMSMethodDescriptor instead')
const SMSMethod$json = {
  '1': 'SMSMethod',
  '2': [
    {'1': 'phone', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'phone'},
  ],
};

/// Descriptor for `SMSMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sMSMethodDescriptor = $convert.base64Decode(
    'CglTTVNNZXRob2QSHwoFcGhvbmUYASABKAlCCfpCBnIEEAgYEFIFcGhvbmU=');

@$core.Deprecated('Use pushoverMethodDescriptor instead')
const PushoverMethod$json = {
  '1': 'PushoverMethod',
  '2': [
    {'1': 'pushover_key', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'pushoverKey'},
  ],
};

/// Descriptor for `PushoverMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushoverMethodDescriptor = $convert.base64Decode(
    'Cg5QdXNob3Zlck1ldGhvZBIsCgxwdXNob3Zlcl9rZXkYASABKAlCCfpCBnIEEBkYLVILcHVzaG'
    '92ZXJLZXk=');

@$core.Deprecated('Use emailMethodDescriptor instead')
const EmailMethod$json = {
  '1': 'EmailMethod',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'email'},
  ],
};

/// Descriptor for `EmailMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emailMethodDescriptor = $convert.base64Decode(
    'CgtFbWFpbE1ldGhvZBIdCgVlbWFpbBgBIAEoCUIH+kIEcgJgAVIFZW1haWw=');

@$core.Deprecated('Use backupsCodesMethodDescriptor instead')
const BackupsCodesMethod$json = {
  '1': 'BackupsCodesMethod',
  '2': [
    {'1': 'passcodes', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'passcodes'},
  ],
};

/// Descriptor for `BackupsCodesMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List backupsCodesMethodDescriptor = $convert.base64Decode(
    'ChJCYWNrdXBzQ29kZXNNZXRob2QSJwoJcGFzc2NvZGVzGAEgASgFQgn6QgYaBBgKKAZSCXBhc3'
    'Njb2Rlcw==');

@$core.Deprecated('Use securityQuestionsMethodDescriptor instead')
const SecurityQuestionsMethod$json = {
  '1': 'SecurityQuestionsMethod',
  '2': [
    {'1': 'answer', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'answer'},
  ],
};

/// Descriptor for `SecurityQuestionsMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List securityQuestionsMethodDescriptor =
    $convert.base64Decode(
        'ChdTZWN1cml0eVF1ZXN0aW9uc01ldGhvZBIhCgZhbnN3ZXIYASABKAlCCfpCBnIEEAMYUFIGYW'
        '5zd2Vy');

@$core.Deprecated('Use identityDescriptor instead')
const Identity$json = {
  '1': 'Identity',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'org_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'orgID'},
    {'1': 'app_id', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'appID'},
    {'1': 'comment', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'comment'},
    {
      '1': 'status',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.ownmfa.api.IdentityStatus',
      '8': {},
      '10': 'status'
    },
    {
      '1': 'software_hotp_method',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.SoftwareHOTPMethod',
      '9': 0,
      '10': 'softwareHOTPMethod'
    },
    {
      '1': 'software_totp_method',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.SoftwareTOTPMethod',
      '9': 0,
      '10': 'softwareTOTPMethod'
    },
    {
      '1': 'google_auth_hotp_method',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.GoogleAuthHOTPMethod',
      '9': 0,
      '10': 'googleAuthHOTPMethod'
    },
    {
      '1': 'google_auth_totp_method',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.GoogleAuthTOTPMethod',
      '9': 0,
      '10': 'googleAuthTOTPMethod'
    },
    {
      '1': 'apple_ios_totp_method',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.AppleiOSTOTPMethod',
      '9': 0,
      '10': 'appleiOSTOTPMethod'
    },
    {
      '1': 'hardware_hotp_method',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.HardwareHOTPMethod',
      '9': 0,
      '10': 'hardwareHOTPMethod'
    },
    {
      '1': 'hardware_totp_method',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.HardwareTOTPMethod',
      '9': 0,
      '10': 'hardwareTOTPMethod'
    },
    {
      '1': 'sms_method',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.SMSMethod',
      '9': 0,
      '10': 'smsMethod'
    },
    {
      '1': 'pushover_method',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.PushoverMethod',
      '9': 0,
      '10': 'pushoverMethod'
    },
    {
      '1': 'email_method',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.EmailMethod',
      '9': 0,
      '10': 'emailMethod'
    },
    {
      '1': 'backup_codes_method',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.BackupsCodesMethod',
      '9': 0,
      '10': 'backupCodesMethod'
    },
    {
      '1': 'security_questions_method',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.SecurityQuestionsMethod',
      '9': 0,
      '10': 'securityQuestionsMethod'
    },
    {
      '1': 'created_at',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'createdAt'
    },
    {
      '1': 'updated_at',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'updatedAt'
    },
  ],
  '8': [
    {'1': 'method_oneof', '2': {}},
  ],
};

/// Descriptor for `Identity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List identityDescriptor = $convert.base64Decode(
    'CghJZGVudGl0eRITCgJpZBgBIAEoCUID4EEDUgJpZBIaCgZvcmdfaWQYAiABKAlCA+BBA1IFb3'
    'JnSUQSGgoGYXBwX2lkGAMgASgJQgPgQQNSBWFwcElEEiYKB2NvbW1lbnQYBCABKAlCDPpCBnIE'
    'EAUYUOBBAlIHY29tbWVudBI3CgZzdGF0dXMYBSABKA4yGi5vd25tZmEuYXBpLklkZW50aXR5U3'
    'RhdHVzQgPgQQNSBnN0YXR1cxJSChRzb2Z0d2FyZV9ob3RwX21ldGhvZBgQIAEoCzIeLm93bm1m'
    'YS5hcGkuU29mdHdhcmVIT1RQTWV0aG9kSABSEnNvZnR3YXJlSE9UUE1ldGhvZBJSChRzb2Z0d2'
    'FyZV90b3RwX21ldGhvZBgGIAEoCzIeLm93bm1mYS5hcGkuU29mdHdhcmVUT1RQTWV0aG9kSABS'
    'EnNvZnR3YXJlVE9UUE1ldGhvZBJZChdnb29nbGVfYXV0aF9ob3RwX21ldGhvZBgRIAEoCzIgLm'
    '93bm1mYS5hcGkuR29vZ2xlQXV0aEhPVFBNZXRob2RIAFIUZ29vZ2xlQXV0aEhPVFBNZXRob2QS'
    'WQoXZ29vZ2xlX2F1dGhfdG90cF9tZXRob2QYByABKAsyIC5vd25tZmEuYXBpLkdvb2dsZUF1dG'
    'hUT1RQTWV0aG9kSABSFGdvb2dsZUF1dGhUT1RQTWV0aG9kElMKFWFwcGxlX2lvc190b3RwX21l'
    'dGhvZBgWIAEoCzIeLm93bm1mYS5hcGkuQXBwbGVpT1NUT1RQTWV0aG9kSABSEmFwcGxlaU9TVE'
    '9UUE1ldGhvZBJSChRoYXJkd2FyZV9ob3RwX21ldGhvZBgSIAEoCzIeLm93bm1mYS5hcGkuSGFy'
    'ZHdhcmVIT1RQTWV0aG9kSABSEmhhcmR3YXJlSE9UUE1ldGhvZBJSChRoYXJkd2FyZV90b3RwX2'
    '1ldGhvZBgTIAEoCzIeLm93bm1mYS5hcGkuSGFyZHdhcmVUT1RQTWV0aG9kSABSEmhhcmR3YXJl'
    'VE9UUE1ldGhvZBI2CgpzbXNfbWV0aG9kGAggASgLMhUub3dubWZhLmFwaS5TTVNNZXRob2RIAF'
    'IJc21zTWV0aG9kEkUKD3B1c2hvdmVyX21ldGhvZBgUIAEoCzIaLm93bm1mYS5hcGkuUHVzaG92'
    'ZXJNZXRob2RIAFIOcHVzaG92ZXJNZXRob2QSPAoMZW1haWxfbWV0aG9kGAkgASgLMhcub3dubW'
    'ZhLmFwaS5FbWFpbE1ldGhvZEgAUgtlbWFpbE1ldGhvZBJQChNiYWNrdXBfY29kZXNfbWV0aG9k'
    'GAogASgLMh4ub3dubWZhLmFwaS5CYWNrdXBzQ29kZXNNZXRob2RIAFIRYmFja3VwQ29kZXNNZX'
    'Rob2QSYQoZc2VjdXJpdHlfcXVlc3Rpb25zX21ldGhvZBgVIAEoCzIjLm93bm1mYS5hcGkuU2Vj'
    'dXJpdHlRdWVzdGlvbnNNZXRob2RIAFIXc2VjdXJpdHlRdWVzdGlvbnNNZXRob2QSPgoKY3JlYX'
    'RlZF9hdBgOIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCA+BBA1IJY3JlYXRlZEF0'
    'Ej4KCnVwZGF0ZWRfYXQYDyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgPgQQNSCX'
    'VwZGF0ZWRBdEITCgxtZXRob2Rfb25lb2YSA/hCAQ==');

@$core.Deprecated('Use createIdentityRequestDescriptor instead')
const CreateIdentityRequest$json = {
  '1': 'CreateIdentityRequest',
  '2': [
    {
      '1': 'identity',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.Identity',
      '8': {},
      '10': 'identity'
    },
  ],
};

/// Descriptor for `CreateIdentityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createIdentityRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVJZGVudGl0eVJlcXVlc3QSPQoIaWRlbnRpdHkYASABKAsyFC5vd25tZmEuYXBpLk'
    'lkZW50aXR5Qgv6QgWKAQIQAeBBAlIIaWRlbnRpdHk=');

@$core.Deprecated('Use createIdentityResponseDescriptor instead')
const CreateIdentityResponse$json = {
  '1': 'CreateIdentityResponse',
  '2': [
    {
      '1': 'identity',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.ownmfa.api.Identity',
      '10': 'identity'
    },
    {'1': 'secret', '3': 2, '4': 1, '5': 9, '10': 'secret'},
    {'1': 'qr', '3': 3, '4': 1, '5': 12, '10': 'qr'},
    {'1': 'passcodes', '3': 4, '4': 3, '5': 9, '10': 'passcodes'},
  ],
};

/// Descriptor for `CreateIdentityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createIdentityResponseDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVJZGVudGl0eVJlc3BvbnNlEjAKCGlkZW50aXR5GAEgASgLMhQub3dubWZhLmFwaS'
    '5JZGVudGl0eVIIaWRlbnRpdHkSFgoGc2VjcmV0GAIgASgJUgZzZWNyZXQSDgoCcXIYAyABKAxS'
    'AnFyEhwKCXBhc3Njb2RlcxgEIAMoCVIJcGFzc2NvZGVz');

@$core.Deprecated('Use activateIdentityRequestDescriptor instead')
const ActivateIdentityRequest$json = {
  '1': 'ActivateIdentityRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'app_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'appID'},
    {'1': 'passcode', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'passcode'},
  ],
};

/// Descriptor for `ActivateIdentityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activateIdentityRequestDescriptor = $convert.base64Decode(
    'ChdBY3RpdmF0ZUlkZW50aXR5UmVxdWVzdBIbCgJpZBgBIAEoCUIL+kIFcgOwAQHgQQJSAmlkEi'
    'IKBmFwcF9pZBgCIAEoCUIL+kIFcgOwAQHgQQJSBWFwcElEEigKCHBhc3Njb2RlGAMgASgJQgz6'
    'QgZyBBADGFDgQQJSCHBhc3Njb2Rl');

@$core.Deprecated('Use challengeIdentityRequestDescriptor instead')
const ChallengeIdentityRequest$json = {
  '1': 'ChallengeIdentityRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'app_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'appID'},
  ],
};

/// Descriptor for `ChallengeIdentityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List challengeIdentityRequestDescriptor =
    $convert.base64Decode(
        'ChhDaGFsbGVuZ2VJZGVudGl0eVJlcXVlc3QSGwoCaWQYASABKAlCC/pCBXIDsAEB4EECUgJpZB'
        'IiCgZhcHBfaWQYAiABKAlCC/pCBXIDsAEB4EECUgVhcHBJRA==');

@$core.Deprecated('Use verifyIdentityRequestDescriptor instead')
const VerifyIdentityRequest$json = {
  '1': 'VerifyIdentityRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'app_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'appID'},
    {'1': 'passcode', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'passcode'},
  ],
};

/// Descriptor for `VerifyIdentityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyIdentityRequestDescriptor = $convert.base64Decode(
    'ChVWZXJpZnlJZGVudGl0eVJlcXVlc3QSGwoCaWQYASABKAlCC/pCBXIDsAEB4EECUgJpZBIiCg'
    'ZhcHBfaWQYAiABKAlCC/pCBXIDsAEB4EECUgVhcHBJRBIoCghwYXNzY29kZRgDIAEoCUIM+kIG'
    'cgQQAxhQ4EECUghwYXNzY29kZQ==');

@$core.Deprecated('Use getIdentityRequestDescriptor instead')
const GetIdentityRequest$json = {
  '1': 'GetIdentityRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'app_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'appID'},
  ],
};

/// Descriptor for `GetIdentityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getIdentityRequestDescriptor = $convert.base64Decode(
    'ChJHZXRJZGVudGl0eVJlcXVlc3QSGwoCaWQYASABKAlCC/pCBXIDsAEB4EECUgJpZBIiCgZhcH'
    'BfaWQYAiABKAlCC/pCBXIDsAEB4EECUgVhcHBJRA==');

@$core.Deprecated('Use deleteIdentityRequestDescriptor instead')
const DeleteIdentityRequest$json = {
  '1': 'DeleteIdentityRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'app_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'appID'},
  ],
};

/// Descriptor for `DeleteIdentityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteIdentityRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVJZGVudGl0eVJlcXVlc3QSGwoCaWQYASABKAlCC/pCBXIDsAEB4EECUgJpZBIiCg'
    'ZhcHBfaWQYAiABKAlCC/pCBXIDsAEB4EECUgVhcHBJRA==');

@$core.Deprecated('Use listIdentitiesRequestDescriptor instead')
const ListIdentitiesRequest$json = {
  '1': 'ListIdentitiesRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
    {'1': 'app_id', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'appID'},
  ],
};

/// Descriptor for `ListIdentitiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listIdentitiesRequestDescriptor = $convert.base64Decode(
    'ChVMaXN0SWRlbnRpdGllc1JlcXVlc3QSJQoJcGFnZV9zaXplGAEgASgFQgj6QgUaAxj6AVIIcG'
    'FnZVNpemUSHQoKcGFnZV90b2tlbhgCIAEoCVIJcGFnZVRva2VuEiIKBmFwcF9pZBgDIAEoCUIL'
    '+kIIcgawAQHQAQFSBWFwcElE');

@$core.Deprecated('Use listIdentitiesResponseDescriptor instead')
const ListIdentitiesResponse$json = {
  '1': 'ListIdentitiesResponse',
  '2': [
    {
      '1': 'identities',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.ownmfa.api.Identity',
      '10': 'identities'
    },
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListIdentitiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listIdentitiesResponseDescriptor = $convert.base64Decode(
    'ChZMaXN0SWRlbnRpdGllc1Jlc3BvbnNlEjQKCmlkZW50aXRpZXMYASADKAsyFC5vd25tZmEuYX'
    'BpLklkZW50aXR5UgppZGVudGl0aWVzEiYKD25leHRfcGFnZV90b2tlbhgCIAEoCVINbmV4dFBh'
    'Z2VUb2tlbhIdCgp0b3RhbF9zaXplGAMgASgFUgl0b3RhbFNpemU=');
