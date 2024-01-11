//
//  Generated code. Do not modify.
//  source: api/ownmfa_event.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventStatusDescriptor instead')
const EventStatus$json = {
  '1': 'EventStatus',
  '2': [
    {'1': 'EVENT_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'IDENTITY_CREATED', '2': 1},
    {'1': 'CHALLENGE_SENT', '2': 2},
    {'1': 'CHALLENGE_NOOP', '2': 3},
    {'1': 'CHALLENGE_FAIL', '2': 4},
    {'1': 'ACTIVATE_SUCCESS', '2': 5},
    {'1': 'ACTIVATE_FAIL', '2': 6},
    {'1': 'VERIFY_SUCCESS', '2': 7},
    {'1': 'VERIFY_FAIL', '2': 8},
    {'1': 'IDENTITY_DELETED', '2': 9},
  ],
};

/// Descriptor for `EventStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eventStatusDescriptor = $convert.base64Decode(
    'CgtFdmVudFN0YXR1cxIcChhFVkVOVF9TVEFUVVNfVU5TUEVDSUZJRUQQABIUChBJREVOVElUWV'
    '9DUkVBVEVEEAESEgoOQ0hBTExFTkdFX1NFTlQQAhISCg5DSEFMTEVOR0VfTk9PUBADEhIKDkNI'
    'QUxMRU5HRV9GQUlMEAQSFAoQQUNUSVZBVEVfU1VDQ0VTUxAFEhEKDUFDVElWQVRFX0ZBSUwQBh'
    'ISCg5WRVJJRllfU1VDQ0VTUxAHEg8KC1ZFUklGWV9GQUlMEAgSFAoQSURFTlRJVFlfREVMRVRF'
    'RBAJ');

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'org_id', '3': 1, '4': 1, '5': 9, '10': 'orgID'},
    {'1': 'app_id', '3': 2, '4': 1, '5': 9, '10': 'appID'},
    {'1': 'identity_id', '3': 3, '4': 1, '5': 9, '10': 'identityID'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.ownmfa.api.EventStatus', '10': 'status'},
    {'1': 'error', '3': 5, '4': 1, '5': 9, '10': 'error'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'trace_id', '3': 7, '4': 1, '5': 9, '10': 'traceId'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBIVCgZvcmdfaWQYASABKAlSBW9yZ0lEEhUKBmFwcF9pZBgCIAEoCVIFYXBwSUQSHw'
    'oLaWRlbnRpdHlfaWQYAyABKAlSCmlkZW50aXR5SUQSLwoGc3RhdHVzGAQgASgOMhcub3dubWZh'
    'LmFwaS5FdmVudFN0YXR1c1IGc3RhdHVzEhQKBWVycm9yGAUgASgJUgVlcnJvchI5CgpjcmVhdG'
    'VkX2F0GAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EhkKCHRy'
    'YWNlX2lkGAcgASgJUgd0cmFjZUlk');

@$core.Deprecated('Use listEventsRequestDescriptor instead')
const ListEventsRequest$json = {
  '1': 'ListEventsRequest',
  '2': [
    {'1': 'identity_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'identityID'},
    {'1': 'end_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endTime'},
    {'1': 'start_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startTime'},
  ],
};

/// Descriptor for `ListEventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEventsRequestDescriptor = $convert.base64Decode(
    'ChFMaXN0RXZlbnRzUmVxdWVzdBIsCgtpZGVudGl0eV9pZBgBIAEoCUIL+kIFcgOwAQHgQQJSCm'
    'lkZW50aXR5SUQSNQoIZW5kX3RpbWUYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1w'
    'UgdlbmRUaW1lEjkKCnN0YXJ0X3RpbWUYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW'
    '1wUglzdGFydFRpbWU=');

@$core.Deprecated('Use listEventsResponseDescriptor instead')
const ListEventsResponse$json = {
  '1': 'ListEventsResponse',
  '2': [
    {'1': 'events', '3': 1, '4': 3, '5': 11, '6': '.ownmfa.api.Event', '10': 'events'},
  ],
};

/// Descriptor for `ListEventsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEventsResponseDescriptor = $convert.base64Decode(
    'ChJMaXN0RXZlbnRzUmVzcG9uc2USKQoGZXZlbnRzGAEgAygLMhEub3dubWZhLmFwaS5FdmVudF'
    'IGZXZlbnRz');

@$core.Deprecated('Use latestEventsRequestDescriptor instead')
const LatestEventsRequest$json = {
  '1': 'LatestEventsRequest',
  '2': [
    {'1': 'app_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'appID'},
    {'1': 'identity_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'identityID'},
  ],
};

/// Descriptor for `LatestEventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List latestEventsRequestDescriptor = $convert.base64Decode(
    'ChNMYXRlc3RFdmVudHNSZXF1ZXN0EiIKBmFwcF9pZBgBIAEoCUIL+kIIcgawAQHQAQFSBWFwcE'
    'lEEiwKC2lkZW50aXR5X2lkGAIgASgJQgv6QghyBrABAdABAVIKaWRlbnRpdHlJRA==');

@$core.Deprecated('Use latestEventsResponseDescriptor instead')
const LatestEventsResponse$json = {
  '1': 'LatestEventsResponse',
  '2': [
    {'1': 'events', '3': 1, '4': 3, '5': 11, '6': '.ownmfa.api.Event', '10': 'events'},
  ],
};

/// Descriptor for `LatestEventsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List latestEventsResponseDescriptor = $convert.base64Decode(
    'ChRMYXRlc3RFdmVudHNSZXNwb25zZRIpCgZldmVudHMYASADKAsyES5vd25tZmEuYXBpLkV2ZW'
    '50UgZldmVudHM=');

