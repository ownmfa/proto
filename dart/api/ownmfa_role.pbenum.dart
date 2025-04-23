//
//  Generated code. Do not modify.
//  source: api/ownmfa_role.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Role represents the role of a user.
class Role extends $pb.ProtobufEnum {
  /// Role is not specified.
  static const Role ROLE_UNSPECIFIED = Role._(0, _omitEnumNames ? '' : 'ROLE_UNSPECIFIED');
  /// Viewers can only read resources in their organization, but can update their own user.
  static const Role VIEWER = Role._(4, _omitEnumNames ? '' : 'VIEWER');
  /// Authenticators can read and modify resources in their organization, but can only update their own user.
  static const Role AUTHENTICATOR = Role._(8, _omitEnumNames ? '' : 'AUTHENTICATOR');
  /// Admins can read and modify anything in their organization, including creating users of an equal or lesser role.
  static const Role ADMIN = Role._(12, _omitEnumNames ? '' : 'ADMIN');
  /// System admins can create organizations and modify anything in their organization.
  static const Role SYS_ADMIN = Role._(15, _omitEnumNames ? '' : 'SYS_ADMIN');

  static const $core.List<Role> values = <Role> [
    ROLE_UNSPECIFIED,
    VIEWER,
    AUTHENTICATOR,
    ADMIN,
    SYS_ADMIN,
  ];

  static final $core.Map<$core.int, Role> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Role? valueOf($core.int value) => _byValue[value];

  const Role._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
