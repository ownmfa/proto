//
//  Generated code. Do not modify.
//  source: api/ownmfa_status.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Status represents the status of a message.
class Status extends $pb.ProtobufEnum {
  /// Status is not specified.
  static const Status STATUS_UNSPECIFIED = Status._(0, _omitEnumNames ? '' : 'STATUS_UNSPECIFIED');
  /// Message subject is active.
  static const Status ACTIVE = Status._(3, _omitEnumNames ? '' : 'ACTIVE');
  /// Message subject is disabled.
  static const Status DISABLED = Status._(6, _omitEnumNames ? '' : 'DISABLED');

  static const $core.List<Status> values = <Status> [
    STATUS_UNSPECIFIED,
    ACTIVE,
    DISABLED,
  ];

  static final $core.Map<$core.int, Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Status? valueOf($core.int value) => _byValue[value];

  const Status._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
