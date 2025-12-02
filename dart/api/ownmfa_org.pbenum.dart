// This is a generated file - do not edit.
//
// Generated from api/ownmfa_org.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Plan represents the plan and associated capabilities of an organization.
class Plan extends $pb.ProtobufEnum {
  /// Plan is not specified.
  static const Plan PLAN_UNSPECIFIED =
      Plan._(0, _omitEnumNames ? '' : 'PLAN_UNSPECIFIED');

  /// Payment has failed and the organization is restricted to Starter plan capabilities.
  static const Plan PAYMENT_FAIL =
      Plan._(3, _omitEnumNames ? '' : 'PAYMENT_FAIL');

  /// Starter plan supports software and hardware OATH one-time password authentication methods, up to a limited number of identities.
  static const Plan STARTER = Plan._(6, _omitEnumNames ? '' : 'STARTER');

  /// Pro plan supports all authentication methods and includes email support.
  static const Plan PRO = Plan._(9, _omitEnumNames ? '' : 'PRO');

  /// Enterprise plan supports all authentication methods and includes email and phone support.
  static const Plan ENTERPRISE = Plan._(12, _omitEnumNames ? '' : 'ENTERPRISE');

  static const $core.List<Plan> values = <Plan>[
    PLAN_UNSPECIFIED,
    PAYMENT_FAIL,
    STARTER,
    PRO,
    ENTERPRISE,
  ];

  static final $core.Map<$core.int, Plan> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Plan? valueOf($core.int value) => _byValue[value];

  const Plan._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
