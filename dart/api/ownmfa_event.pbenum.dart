// This is a generated file - do not edit.
//
// Generated from api/ownmfa_event.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// EventStatus represents the status of an event.
class EventStatus extends $pb.ProtobufEnum {
  /// Event status is not specified.
  static const EventStatus EVENT_STATUS_UNSPECIFIED =
      EventStatus._(0, _omitEnumNames ? '' : 'EVENT_STATUS_UNSPECIFIED');

  /// Identity was successfully created.
  static const EventStatus IDENTITY_CREATED =
      EventStatus._(1, _omitEnumNames ? '' : 'IDENTITY_CREATED');

  /// Challenge was successfully sent.
  static const EventStatus CHALLENGE_SENT =
      EventStatus._(2, _omitEnumNames ? '' : 'CHALLENGE_SENT');

  /// Challenge was requested, but was not required by the identity's authentication method.
  static const EventStatus CHALLENGE_NOOP =
      EventStatus._(3, _omitEnumNames ? '' : 'CHALLENGE_NOOP');

  /// Challenge failed to send. The Event error field will be populated.
  static const EventStatus CHALLENGE_FAIL =
      EventStatus._(4, _omitEnumNames ? '' : 'CHALLENGE_FAIL');

  /// Identity was successfully activated.
  static const EventStatus ACTIVATE_SUCCESS =
      EventStatus._(5, _omitEnumNames ? '' : 'ACTIVATE_SUCCESS');

  /// Identity failed to activate. The Event error field will be populated.
  static const EventStatus ACTIVATE_FAIL =
      EventStatus._(6, _omitEnumNames ? '' : 'ACTIVATE_FAIL');

  /// Identity was successfully verified.
  static const EventStatus VERIFY_SUCCESS =
      EventStatus._(7, _omitEnumNames ? '' : 'VERIFY_SUCCESS');

  /// Identity failed to verify. The Event error field will be populated.
  static const EventStatus VERIFY_FAIL =
      EventStatus._(8, _omitEnumNames ? '' : 'VERIFY_FAIL');

  /// Identity was successfully deleted.
  static const EventStatus IDENTITY_DELETED =
      EventStatus._(9, _omitEnumNames ? '' : 'IDENTITY_DELETED');

  static const $core.List<EventStatus> values = <EventStatus>[
    EVENT_STATUS_UNSPECIFIED,
    IDENTITY_CREATED,
    CHALLENGE_SENT,
    CHALLENGE_NOOP,
    CHALLENGE_FAIL,
    ACTIVATE_SUCCESS,
    ACTIVATE_FAIL,
    VERIFY_SUCCESS,
    VERIFY_FAIL,
    IDENTITY_DELETED,
  ];

  static final $core.List<EventStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static EventStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EventStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
