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
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $1;

import 'ownmfa_event.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ownmfa_event.pbenum.dart';

/// Event represents an event as stored in the database.
class Event extends $pb.GeneratedMessage {
  factory Event({
    $core.String? orgId,
    $core.String? appId,
    $core.String? identityId,
    EventStatus? status,
    $core.String? error,
    $1.Timestamp? createdAt,
    $core.String? traceId,
  }) {
    final result = create();
    if (orgId != null) result.orgId = orgId;
    if (appId != null) result.appId = appId;
    if (identityId != null) result.identityId = identityId;
    if (status != null) result.status = status;
    if (error != null) result.error = error;
    if (createdAt != null) result.createdAt = createdAt;
    if (traceId != null) result.traceId = traceId;
    return result;
  }

  Event._();

  factory Event.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Event.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Event',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'orgID', protoName: 'org_id')
    ..aOS(2, _omitFieldNames ? '' : 'appID', protoName: 'app_id')
    ..aOS(3, _omitFieldNames ? '' : 'identityID', protoName: 'identity_id')
    ..aE<EventStatus>(4, _omitFieldNames ? '' : 'status',
        enumValues: EventStatus.values)
    ..aOS(5, _omitFieldNames ? '' : 'error')
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $1.Timestamp.create)
    ..aOS(7, _omitFieldNames ? '' : 'traceId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Event clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Event copyWith(void Function(Event) updates) =>
      super.copyWith((message) => updates(message as Event)) as Event;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  @$core.override
  Event createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  /// Organization ID (UUID).
  @$pb.TagNumber(1)
  $core.String get orgId => $_getSZ(0);
  @$pb.TagNumber(1)
  set orgId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrgId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrgId() => $_clearField(1);

  /// Application ID (UUID).
  @$pb.TagNumber(2)
  $core.String get appId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppId() => $_clearField(2);

  /// Identity ID (UUID).
  @$pb.TagNumber(3)
  $core.String get identityId => $_getSZ(2);
  @$pb.TagNumber(3)
  set identityId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIdentityId() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdentityId() => $_clearField(3);

  /// Event status.
  @$pb.TagNumber(4)
  EventStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(EventStatus value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => $_clearField(4);

  /// Error message. This field will be empty if no error was encountered.
  @$pb.TagNumber(5)
  $core.String get error => $_getSZ(4);
  @$pb.TagNumber(5)
  set error($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasError() => $_has(4);
  @$pb.TagNumber(5)
  void clearError() => $_clearField(5);

  /// Event creation timestamp.
  @$pb.TagNumber(6)
  $1.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(6)
  set createdAt($1.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureCreatedAt() => $_ensure(5);

  /// Trace ID (UUID).
  @$pb.TagNumber(7)
  $core.String get traceId => $_getSZ(6);
  @$pb.TagNumber(7)
  set traceId($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTraceId() => $_has(6);
  @$pb.TagNumber(7)
  void clearTraceId() => $_clearField(7);
}

/// ListEventsRequest is sent to list identity events in an [end, start) time range, in descending timestamp order.
class ListEventsRequest extends $pb.GeneratedMessage {
  factory ListEventsRequest({
    $core.String? identityId,
    $1.Timestamp? endTime,
    $1.Timestamp? startTime,
  }) {
    final result = create();
    if (identityId != null) result.identityId = identityId;
    if (endTime != null) result.endTime = endTime;
    if (startTime != null) result.startTime = startTime;
    return result;
  }

  ListEventsRequest._();

  factory ListEventsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListEventsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListEventsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identityID', protoName: 'identity_id')
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'endTime',
        subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'startTime',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListEventsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListEventsRequest copyWith(void Function(ListEventsRequest) updates) =>
      super.copyWith((message) => updates(message as ListEventsRequest))
          as ListEventsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEventsRequest create() => ListEventsRequest._();
  @$core.override
  ListEventsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListEventsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEventsRequest>(create);
  static ListEventsRequest? _defaultInstance;

  /// Identity ID (UUID).
  @$pb.TagNumber(1)
  $core.String get identityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set identityId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIdentityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentityId() => $_clearField(1);

  /// Events range end time. Defaults to current time if not specified. Maximum supported time range is 90 days.
  @$pb.TagNumber(2)
  $1.Timestamp get endTime => $_getN(1);
  @$pb.TagNumber(2)
  set endTime($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureEndTime() => $_ensure(1);

  /// Events range start time. Defaults to end_time - 24 hours if not specified or after end_time. Maximum supported time range is 90 days.
  @$pb.TagNumber(3)
  $1.Timestamp get startTime => $_getN(2);
  @$pb.TagNumber(3)
  set startTime($1.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStartTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureStartTime() => $_ensure(2);
}

/// ListEventsResponse is sent in response to an identity events list.
class ListEventsResponse extends $pb.GeneratedMessage {
  factory ListEventsResponse({
    $core.Iterable<Event>? events,
  }) {
    final result = create();
    if (events != null) result.events.addAll(events);
    return result;
  }

  ListEventsResponse._();

  factory ListEventsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListEventsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListEventsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..pPM<Event>(1, _omitFieldNames ? '' : 'events', subBuilder: Event.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListEventsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListEventsResponse copyWith(void Function(ListEventsResponse) updates) =>
      super.copyWith((message) => updates(message as ListEventsResponse))
          as ListEventsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEventsResponse create() => ListEventsResponse._();
  @$core.override
  ListEventsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListEventsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEventsResponse>(create);
  static ListEventsResponse? _defaultInstance;

  /// Event array, ordered by descending created_at timestamp.
  @$pb.TagNumber(1)
  $pb.PbList<Event> get events => $_getList(0);
}

/// LatestEventsRequest is sent to list latest organization events.
class LatestEventsRequest extends $pb.GeneratedMessage {
  factory LatestEventsRequest({
    $core.String? appId,
    $core.String? identityId,
  }) {
    final result = create();
    if (appId != null) result.appId = appId;
    if (identityId != null) result.identityId = identityId;
    return result;
  }

  LatestEventsRequest._();

  factory LatestEventsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LatestEventsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LatestEventsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'appID', protoName: 'app_id')
    ..aOS(2, _omitFieldNames ? '' : 'identityID', protoName: 'identity_id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LatestEventsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LatestEventsRequest copyWith(void Function(LatestEventsRequest) updates) =>
      super.copyWith((message) => updates(message as LatestEventsRequest))
          as LatestEventsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LatestEventsRequest create() => LatestEventsRequest._();
  @$core.override
  LatestEventsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LatestEventsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LatestEventsRequest>(create);
  static LatestEventsRequest? _defaultInstance;

  /// Application ID (UUID). If not specified, all applications are included.
  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => $_clearField(1);

  /// Identity ID (UUID). If not specified, all identities are included.
  @$pb.TagNumber(2)
  $core.String get identityId => $_getSZ(1);
  @$pb.TagNumber(2)
  set identityId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIdentityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdentityId() => $_clearField(2);
}

/// LatestEventsResponse is sent in response to an organization latest list.
class LatestEventsResponse extends $pb.GeneratedMessage {
  factory LatestEventsResponse({
    $core.Iterable<Event>? events,
  }) {
    final result = create();
    if (events != null) result.events.addAll(events);
    return result;
  }

  LatestEventsResponse._();

  factory LatestEventsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LatestEventsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LatestEventsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..pPM<Event>(1, _omitFieldNames ? '' : 'events', subBuilder: Event.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LatestEventsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LatestEventsResponse copyWith(void Function(LatestEventsResponse) updates) =>
      super.copyWith((message) => updates(message as LatestEventsResponse))
          as LatestEventsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LatestEventsResponse create() => LatestEventsResponse._();
  @$core.override
  LatestEventsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LatestEventsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LatestEventsResponse>(create);
  static LatestEventsResponse? _defaultInstance;

  /// Event array, ordered by descending created_at timestamp.
  @$pb.TagNumber(1)
  $pb.PbList<Event> get events => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
