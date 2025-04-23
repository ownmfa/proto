//
//  Generated code. Do not modify.
//  source: api/ownmfa_org.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/field_mask.pb.dart' as $7;
import '../google/protobuf/timestamp.pb.dart' as $6;
import 'ownmfa_org.pbenum.dart';
import 'ownmfa_status.pbenum.dart' as $8;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ownmfa_org.pbenum.dart';

/// Org represents an organization as stored in the database.
class Org extends $pb.GeneratedMessage {
  factory Org({
    $core.String? id,
    $core.String? name,
    $6.Timestamp? createdAt,
    $6.Timestamp? updatedAt,
    $8.Status? status,
    Plan? plan,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (status != null) {
      $result.status = status;
    }
    if (plan != null) {
      $result.plan = plan;
    }
    return $result;
  }
  Org._() : super();
  factory Org.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Org.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Org', package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<$6.Timestamp>(3, _omitFieldNames ? '' : 'createdAt', subBuilder: $6.Timestamp.create)
    ..aOM<$6.Timestamp>(4, _omitFieldNames ? '' : 'updatedAt', subBuilder: $6.Timestamp.create)
    ..e<$8.Status>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $8.Status.STATUS_UNSPECIFIED, valueOf: $8.Status.valueOf, enumValues: $8.Status.values)
    ..e<Plan>(6, _omitFieldNames ? '' : 'plan', $pb.PbFieldType.OE, defaultOrMaker: Plan.PLAN_UNSPECIFIED, valueOf: Plan.valueOf, enumValues: Plan.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Org clone() => Org()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Org copyWith(void Function(Org) updates) => super.copyWith((message) => updates(message as Org)) as Org;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Org create() => Org._();
  Org createEmptyInstance() => create();
  static $pb.PbList<Org> createRepeated() => $pb.PbList<Org>();
  @$core.pragma('dart2js:noInline')
  static Org getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Org>(create);
  static Org? _defaultInstance;

  /// Organization ID (UUID).
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Organization name.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// Organization creation timestamp.
  @$pb.TagNumber(3)
  $6.Timestamp get createdAt => $_getN(2);
  @$pb.TagNumber(3)
  set createdAt($6.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $6.Timestamp ensureCreatedAt() => $_ensure(2);

  /// Organization modification timestamp.
  @$pb.TagNumber(4)
  $6.Timestamp get updatedAt => $_getN(3);
  @$pb.TagNumber(4)
  set updatedAt($6.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $6.Timestamp ensureUpdatedAt() => $_ensure(3);

  /// Organization status.
  @$pb.TagNumber(5)
  $8.Status get status => $_getN(4);
  @$pb.TagNumber(5)
  set status($8.Status v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  /// Organization plan.
  @$pb.TagNumber(6)
  Plan get plan => $_getN(5);
  @$pb.TagNumber(6)
  set plan(Plan v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPlan() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlan() => $_clearField(6);
}

/// CreateOrgRequest is sent to create an organization.
class CreateOrgRequest extends $pb.GeneratedMessage {
  factory CreateOrgRequest({
    Org? org,
  }) {
    final $result = create();
    if (org != null) {
      $result.org = org;
    }
    return $result;
  }
  CreateOrgRequest._() : super();
  factory CreateOrgRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateOrgRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateOrgRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'), createEmptyInstance: create)
    ..aOM<Org>(1, _omitFieldNames ? '' : 'org', subBuilder: Org.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateOrgRequest clone() => CreateOrgRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateOrgRequest copyWith(void Function(CreateOrgRequest) updates) => super.copyWith((message) => updates(message as CreateOrgRequest)) as CreateOrgRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateOrgRequest create() => CreateOrgRequest._();
  CreateOrgRequest createEmptyInstance() => create();
  static $pb.PbList<CreateOrgRequest> createRepeated() => $pb.PbList<CreateOrgRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateOrgRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateOrgRequest>(create);
  static CreateOrgRequest? _defaultInstance;

  /// Org message to create.
  @$pb.TagNumber(1)
  Org get org => $_getN(0);
  @$pb.TagNumber(1)
  set org(Org v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);
  @$pb.TagNumber(1)
  Org ensureOrg() => $_ensure(0);
}

/// GetOrgRequest is sent to get an organization.
class GetOrgRequest extends $pb.GeneratedMessage {
  factory GetOrgRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetOrgRequest._() : super();
  factory GetOrgRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrgRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrgRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrgRequest clone() => GetOrgRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrgRequest copyWith(void Function(GetOrgRequest) updates) => super.copyWith((message) => updates(message as GetOrgRequest)) as GetOrgRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrgRequest create() => GetOrgRequest._();
  GetOrgRequest createEmptyInstance() => create();
  static $pb.PbList<GetOrgRequest> createRepeated() => $pb.PbList<GetOrgRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOrgRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrgRequest>(create);
  static GetOrgRequest? _defaultInstance;

  /// Organization ID (UUID) to get.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

/// UpdateOrgRequest is sent to update an organization.
class UpdateOrgRequest extends $pb.GeneratedMessage {
  factory UpdateOrgRequest({
    Org? org,
    $7.FieldMask? updateMask,
  }) {
    final $result = create();
    if (org != null) {
      $result.org = org;
    }
    if (updateMask != null) {
      $result.updateMask = updateMask;
    }
    return $result;
  }
  UpdateOrgRequest._() : super();
  factory UpdateOrgRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOrgRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateOrgRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'), createEmptyInstance: create)
    ..aOM<Org>(1, _omitFieldNames ? '' : 'org', subBuilder: Org.create)
    ..aOM<$7.FieldMask>(2, _omitFieldNames ? '' : 'updateMask', subBuilder: $7.FieldMask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateOrgRequest clone() => UpdateOrgRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateOrgRequest copyWith(void Function(UpdateOrgRequest) updates) => super.copyWith((message) => updates(message as UpdateOrgRequest)) as UpdateOrgRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOrgRequest create() => UpdateOrgRequest._();
  UpdateOrgRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateOrgRequest> createRepeated() => $pb.PbList<UpdateOrgRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateOrgRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateOrgRequest>(create);
  static UpdateOrgRequest? _defaultInstance;

  /// Org message to update.
  @$pb.TagNumber(1)
  Org get org => $_getN(0);
  @$pb.TagNumber(1)
  set org(Org v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);
  @$pb.TagNumber(1)
  Org ensureOrg() => $_ensure(0);

  /// Fields to update. Automatically populated by a PATCH request. If not present, a full resource update is performed.
  @$pb.TagNumber(2)
  $7.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($7.FieldMask v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => $_clearField(2);
  @$pb.TagNumber(2)
  $7.FieldMask ensureUpdateMask() => $_ensure(1);
}

/// DeleteOrgRequest is sent to delete an organization.
class DeleteOrgRequest extends $pb.GeneratedMessage {
  factory DeleteOrgRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteOrgRequest._() : super();
  factory DeleteOrgRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteOrgRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteOrgRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteOrgRequest clone() => DeleteOrgRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteOrgRequest copyWith(void Function(DeleteOrgRequest) updates) => super.copyWith((message) => updates(message as DeleteOrgRequest)) as DeleteOrgRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteOrgRequest create() => DeleteOrgRequest._();
  DeleteOrgRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteOrgRequest> createRepeated() => $pb.PbList<DeleteOrgRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteOrgRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteOrgRequest>(create);
  static DeleteOrgRequest? _defaultInstance;

  /// Organization ID (UUID) to delete.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

/// ListOrgsRequest is sent to list organizations.
class ListOrgsRequest extends $pb.GeneratedMessage {
  factory ListOrgsRequest({
    $core.int? pageSize,
    $core.String? pageToken,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    return $result;
  }
  ListOrgsRequest._() : super();
  factory ListOrgsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOrgsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListOrgsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'pageToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOrgsRequest clone() => ListOrgsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOrgsRequest copyWith(void Function(ListOrgsRequest) updates) => super.copyWith((message) => updates(message as ListOrgsRequest)) as ListOrgsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListOrgsRequest create() => ListOrgsRequest._();
  ListOrgsRequest createEmptyInstance() => create();
  static $pb.PbList<ListOrgsRequest> createRepeated() => $pb.PbList<ListOrgsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListOrgsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOrgsRequest>(create);
  static ListOrgsRequest? _defaultInstance;

  /// Number of organizations to retrieve in a single page. Defaults to 50 if not specified, with a maximum of 250.
  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => $_clearField(1);

  /// Token of the page to retrieve. If not specified, the first page of results will be returned. To request the next page of results, use next_page_token from the previous response.
  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => $_clearField(2);
}

/// ListOrgsResponse is sent in response to an organization list.
class ListOrgsResponse extends $pb.GeneratedMessage {
  factory ListOrgsResponse({
    $core.Iterable<Org>? orgs,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (orgs != null) {
      $result.orgs.addAll(orgs);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListOrgsResponse._() : super();
  factory ListOrgsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOrgsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListOrgsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'), createEmptyInstance: create)
    ..pc<Org>(1, _omitFieldNames ? '' : 'orgs', $pb.PbFieldType.PM, subBuilder: Org.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOrgsResponse clone() => ListOrgsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOrgsResponse copyWith(void Function(ListOrgsResponse) updates) => super.copyWith((message) => updates(message as ListOrgsResponse)) as ListOrgsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListOrgsResponse create() => ListOrgsResponse._();
  ListOrgsResponse createEmptyInstance() => create();
  static $pb.PbList<ListOrgsResponse> createRepeated() => $pb.PbList<ListOrgsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListOrgsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOrgsResponse>(create);
  static ListOrgsResponse? _defaultInstance;

  /// Org array, ordered by ascending created_at timestamp.
  @$pb.TagNumber(1)
  $pb.PbList<Org> get orgs => $_getList(0);

  /// Pagination token used to retrieve the next page of results. Not returned for the last page.
  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => $_clearField(2);

  /// Total number of organizations available.
  @$pb.TagNumber(3)
  $core.int get totalSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalSize($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => $_clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
