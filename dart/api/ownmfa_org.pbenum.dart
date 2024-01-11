//
//  Generated code. Do not modify.
//  source: api/ownmfa_org.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Plan represents the plan and associated capabilities of an organization.
class Plan extends $pb.ProtobufEnum {
  static const Plan PLAN_UNSPECIFIED = Plan._(0, _omitEnumNames ? '' : 'PLAN_UNSPECIFIED');
  static const Plan PAYMENT_FAIL = Plan._(3, _omitEnumNames ? '' : 'PAYMENT_FAIL');
  static const Plan STARTER = Plan._(6, _omitEnumNames ? '' : 'STARTER');
  static const Plan PRO = Plan._(9, _omitEnumNames ? '' : 'PRO');
  static const Plan ENTERPRISE = Plan._(12, _omitEnumNames ? '' : 'ENTERPRISE');

  static const $core.List<Plan> values = <Plan> [
    PLAN_UNSPECIFIED,
    PAYMENT_FAIL,
    STARTER,
    PRO,
    ENTERPRISE,
  ];

  static final $core.Map<$core.int, Plan> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Plan? valueOf($core.int value) => _byValue[value];

  const Plan._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
