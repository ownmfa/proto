//
//  Generated code. Do not modify.
//  source: api/ownmfa_app_identity.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// IdentityStatus represents the status of an identity.
class IdentityStatus extends $pb.ProtobufEnum {
  /// Identity is not yet verified.
  static const IdentityStatus UNVERIFIED = IdentityStatus._(0, _omitEnumNames ? '' : 'UNVERIFIED');
  /// Identity has been activated.
  static const IdentityStatus ACTIVATED = IdentityStatus._(3, _omitEnumNames ? '' : 'ACTIVATED');

  static const $core.List<IdentityStatus> values = <IdentityStatus> [
    UNVERIFIED,
    ACTIVATED,
  ];

  static final $core.Map<$core.int, IdentityStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IdentityStatus? valueOf($core.int value) => _byValue[value];

  const IdentityStatus._(super.v, super.n);
}

/// Hash represents a hash function.
class Hash extends $pb.ProtobufEnum {
  /// SHA-2 512 bits.
  static const Hash SHA512 = Hash._(0, _omitEnumNames ? '' : 'SHA512');
  /// SHA-2 256 bits.
  static const Hash SHA256 = Hash._(1, _omitEnumNames ? '' : 'SHA256');
  /// SHA-1.
  static const Hash SHA1 = Hash._(2, _omitEnumNames ? '' : 'SHA1');

  static const $core.List<Hash> values = <Hash> [
    SHA512,
    SHA256,
    SHA1,
  ];

  static final $core.Map<$core.int, Hash> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Hash? valueOf($core.int value) => _byValue[value];

  const Hash._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
