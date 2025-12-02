// This is a generated file - do not edit.
//
// Generated from api/ownmfa_app_identity.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/field_mask.pb.dart'
    as $3;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $2;

import 'ownmfa_app_identity.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ownmfa_app_identity.pbenum.dart';

/// App represents an application as stored in the database.
class App extends $pb.GeneratedMessage {
  factory App({
    $core.String? id,
    $core.String? orgId,
    $core.String? name,
    $core.String? displayName,
    $core.String? email,
    $core.String? pushoverKey,
    $core.String? subjectTemplate,
    $core.String? textBodyTemplate,
    $core.List<$core.int>? htmlBodyTemplate,
    $2.Timestamp? createdAt,
    $2.Timestamp? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (orgId != null) result.orgId = orgId;
    if (name != null) result.name = name;
    if (displayName != null) result.displayName = displayName;
    if (email != null) result.email = email;
    if (pushoverKey != null) result.pushoverKey = pushoverKey;
    if (subjectTemplate != null) result.subjectTemplate = subjectTemplate;
    if (textBodyTemplate != null) result.textBodyTemplate = textBodyTemplate;
    if (htmlBodyTemplate != null) result.htmlBodyTemplate = htmlBodyTemplate;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  App._();

  factory App.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory App.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'App',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'orgID', protoName: 'org_id')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'displayName')
    ..aOS(5, _omitFieldNames ? '' : 'email')
    ..aOS(6, _omitFieldNames ? '' : 'pushoverKey')
    ..aOS(7, _omitFieldNames ? '' : 'subjectTemplate')
    ..aOS(8, _omitFieldNames ? '' : 'textBodyTemplate')
    ..a<$core.List<$core.int>>(
        9, _omitFieldNames ? '' : 'htmlBodyTemplate', $pb.PbFieldType.OY)
    ..aOM<$2.Timestamp>(10, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(11, _omitFieldNames ? '' : 'updatedAt',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  App clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  App copyWith(void Function(App) updates) =>
      super.copyWith((message) => updates(message as App)) as App;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static App create() => App._();
  @$core.override
  App createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static App getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<App>(create);
  static App? _defaultInstance;

  /// Application ID (UUID).
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Organization ID (UUID).
  @$pb.TagNumber(2)
  $core.String get orgId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orgId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrgId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrgId() => $_clearField(2);

  /// Application name.
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  /// Application display name. Used anywhere the application is shown to an external user, including templates and notification sender fields.
  @$pb.TagNumber(4)
  $core.String get displayName => $_getSZ(3);
  @$pb.TagNumber(4)
  set displayName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDisplayName() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayName() => $_clearField(4);

  /// Application email. Optional, used as the 'From' address in email notifications.
  @$pb.TagNumber(5)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(5)
  set email($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmail() => $_clearField(5);

  /// Pushover application key. If not specified, the default OwnMFA Pushover application and templates will be used.
  @$pb.TagNumber(6)
  $core.String get pushoverKey => $_getSZ(5);
  @$pb.TagNumber(6)
  set pushoverKey($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPushoverKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearPushoverKey() => $_clearField(6);

  /// Application subject template. Templates generate HTML-safe output using the [Go template engine](https://golang.org/pkg/html/template/). The variables available for substitution is '{{.displayName}}'. Optional field, for notification methods that support subjects.
  @$pb.TagNumber(7)
  $core.String get subjectTemplate => $_getSZ(6);
  @$pb.TagNumber(7)
  set subjectTemplate($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSubjectTemplate() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubjectTemplate() => $_clearField(7);

  /// Application text body template. Templates generate HTML-safe output using the [Go template engine](https://golang.org/pkg/html/template/). The variables available for substitution are '{{.displayName}}' and '{{.passcode}}'. Optional field, for notification methods that support text bodies. To prevent fraud, SMS notifications used a fixed body that includes the application display_name and verification code.
  @$pb.TagNumber(8)
  $core.String get textBodyTemplate => $_getSZ(7);
  @$pb.TagNumber(8)
  set textBodyTemplate($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTextBodyTemplate() => $_has(7);
  @$pb.TagNumber(8)
  void clearTextBodyTemplate() => $_clearField(8);

  /// Application HTML body template. Templates generate HTML-safe output using the [Go template engine](https://golang.org/pkg/html/template/). The variables available for substitution are '{{.displayName}}' and '{{.passcode}}'. Optional field, for notification methods that support HTML bodies. When used in JSON, the value will be represented as a base64 string.
  @$pb.TagNumber(9)
  $core.List<$core.int> get htmlBodyTemplate => $_getN(8);
  @$pb.TagNumber(9)
  set htmlBodyTemplate($core.List<$core.int> value) => $_setBytes(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHtmlBodyTemplate() => $_has(8);
  @$pb.TagNumber(9)
  void clearHtmlBodyTemplate() => $_clearField(9);

  /// Application creation timestamp.
  @$pb.TagNumber(10)
  $2.Timestamp get createdAt => $_getN(9);
  @$pb.TagNumber(10)
  set createdAt($2.Timestamp value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedAt() => $_clearField(10);
  @$pb.TagNumber(10)
  $2.Timestamp ensureCreatedAt() => $_ensure(9);

  /// Application modification timestamp.
  @$pb.TagNumber(11)
  $2.Timestamp get updatedAt => $_getN(10);
  @$pb.TagNumber(11)
  set updatedAt($2.Timestamp value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasUpdatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearUpdatedAt() => $_clearField(11);
  @$pb.TagNumber(11)
  $2.Timestamp ensureUpdatedAt() => $_ensure(10);
}

/// CreateAppRequest is sent to create an application.
class CreateAppRequest extends $pb.GeneratedMessage {
  factory CreateAppRequest({
    App? app,
  }) {
    final result = create();
    if (app != null) result.app = app;
    return result;
  }

  CreateAppRequest._();

  factory CreateAppRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateAppRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateAppRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOM<App>(1, _omitFieldNames ? '' : 'app', subBuilder: App.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAppRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAppRequest copyWith(void Function(CreateAppRequest) updates) =>
      super.copyWith((message) => updates(message as CreateAppRequest))
          as CreateAppRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateAppRequest create() => CreateAppRequest._();
  @$core.override
  CreateAppRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateAppRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateAppRequest>(create);
  static CreateAppRequest? _defaultInstance;

  /// App message to create.
  @$pb.TagNumber(1)
  App get app => $_getN(0);
  @$pb.TagNumber(1)
  set app(App value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasApp() => $_has(0);
  @$pb.TagNumber(1)
  void clearApp() => $_clearField(1);
  @$pb.TagNumber(1)
  App ensureApp() => $_ensure(0);
}

/// GetAppRequest is sent to get an application.
class GetAppRequest extends $pb.GeneratedMessage {
  factory GetAppRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  GetAppRequest._();

  factory GetAppRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAppRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAppRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAppRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAppRequest copyWith(void Function(GetAppRequest) updates) =>
      super.copyWith((message) => updates(message as GetAppRequest))
          as GetAppRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAppRequest create() => GetAppRequest._();
  @$core.override
  GetAppRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAppRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAppRequest>(create);
  static GetAppRequest? _defaultInstance;

  /// Application ID (UUID) to get.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

/// UpdateAppRequest is sent to update an application.
class UpdateAppRequest extends $pb.GeneratedMessage {
  factory UpdateAppRequest({
    App? app,
    $3.FieldMask? updateMask,
  }) {
    final result = create();
    if (app != null) result.app = app;
    if (updateMask != null) result.updateMask = updateMask;
    return result;
  }

  UpdateAppRequest._();

  factory UpdateAppRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateAppRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateAppRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOM<App>(1, _omitFieldNames ? '' : 'app', subBuilder: App.create)
    ..aOM<$3.FieldMask>(2, _omitFieldNames ? '' : 'updateMask',
        subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAppRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAppRequest copyWith(void Function(UpdateAppRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateAppRequest))
          as UpdateAppRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateAppRequest create() => UpdateAppRequest._();
  @$core.override
  UpdateAppRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateAppRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateAppRequest>(create);
  static UpdateAppRequest? _defaultInstance;

  /// App message to update.
  @$pb.TagNumber(1)
  App get app => $_getN(0);
  @$pb.TagNumber(1)
  set app(App value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasApp() => $_has(0);
  @$pb.TagNumber(1)
  void clearApp() => $_clearField(1);
  @$pb.TagNumber(1)
  App ensureApp() => $_ensure(0);

  /// Fields to update. Automatically populated by a PATCH request. If not present, a full resource update is performed.
  @$pb.TagNumber(2)
  $3.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($3.FieldMask value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.FieldMask ensureUpdateMask() => $_ensure(1);
}

/// DeleteAppRequest is sent to delete an application.
class DeleteAppRequest extends $pb.GeneratedMessage {
  factory DeleteAppRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteAppRequest._();

  factory DeleteAppRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteAppRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteAppRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAppRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAppRequest copyWith(void Function(DeleteAppRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteAppRequest))
          as DeleteAppRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteAppRequest create() => DeleteAppRequest._();
  @$core.override
  DeleteAppRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteAppRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteAppRequest>(create);
  static DeleteAppRequest? _defaultInstance;

  /// Application ID (UUID) to delete.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

/// ListAppsRequest is sent to list applications.
class ListAppsRequest extends $pb.GeneratedMessage {
  factory ListAppsRequest({
    $core.int? pageSize,
    $core.String? pageToken,
  }) {
    final result = create();
    if (pageSize != null) result.pageSize = pageSize;
    if (pageToken != null) result.pageToken = pageToken;
    return result;
  }

  ListAppsRequest._();

  factory ListAppsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListAppsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAppsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'pageSize')
    ..aOS(2, _omitFieldNames ? '' : 'pageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAppsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAppsRequest copyWith(void Function(ListAppsRequest) updates) =>
      super.copyWith((message) => updates(message as ListAppsRequest))
          as ListAppsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAppsRequest create() => ListAppsRequest._();
  @$core.override
  ListAppsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListAppsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAppsRequest>(create);
  static ListAppsRequest? _defaultInstance;

  /// Number of applications to retrieve in a single page. Defaults to 50 if not specified, with a maximum of 250.
  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => $_clearField(1);

  /// Token of the page to retrieve. If not specified, the first page of results will be returned. To request the next page of results, use next_page_token from the previous response.
  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => $_clearField(2);
}

/// ListAppsResponse is sent in response to an application list.
class ListAppsResponse extends $pb.GeneratedMessage {
  factory ListAppsResponse({
    $core.Iterable<App>? apps,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final result = create();
    if (apps != null) result.apps.addAll(apps);
    if (nextPageToken != null) result.nextPageToken = nextPageToken;
    if (totalSize != null) result.totalSize = totalSize;
    return result;
  }

  ListAppsResponse._();

  factory ListAppsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListAppsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAppsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..pPM<App>(1, _omitFieldNames ? '' : 'apps', subBuilder: App.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..aI(3, _omitFieldNames ? '' : 'totalSize')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAppsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAppsResponse copyWith(void Function(ListAppsResponse) updates) =>
      super.copyWith((message) => updates(message as ListAppsResponse))
          as ListAppsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAppsResponse create() => ListAppsResponse._();
  @$core.override
  ListAppsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListAppsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAppsResponse>(create);
  static ListAppsResponse? _defaultInstance;

  /// App array, ordered by ascending created_at timestamp.
  @$pb.TagNumber(1)
  $pb.PbList<App> get apps => $_getList(0);

  /// Pagination token used to retrieve the next page of results. Not returned for the last page.
  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => $_clearField(2);

  /// Total number of applications available.
  @$pb.TagNumber(3)
  $core.int get totalSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalSize($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => $_clearField(3);
}

/// SoftwareHOTPMethod configures a software OATH HOTP one-time password method.
class SoftwareHOTPMethod extends $pb.GeneratedMessage {
  factory SoftwareHOTPMethod({
    Hash? hash,
    $core.int? digits,
    $core.int? counter,
    $core.String? accountName,
  }) {
    final result = create();
    if (hash != null) result.hash = hash;
    if (digits != null) result.digits = digits;
    if (counter != null) result.counter = counter;
    if (accountName != null) result.accountName = accountName;
    return result;
  }

  SoftwareHOTPMethod._();

  factory SoftwareHOTPMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SoftwareHOTPMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SoftwareHOTPMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aE<Hash>(1, _omitFieldNames ? '' : 'hash', enumValues: Hash.values)
    ..aI(2, _omitFieldNames ? '' : 'digits')
    ..aI(3, _omitFieldNames ? '' : 'counter')
    ..aOS(4, _omitFieldNames ? '' : 'accountName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SoftwareHOTPMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SoftwareHOTPMethod copyWith(void Function(SoftwareHOTPMethod) updates) =>
      super.copyWith((message) => updates(message as SoftwareHOTPMethod))
          as SoftwareHOTPMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SoftwareHOTPMethod create() => SoftwareHOTPMethod._();
  @$core.override
  SoftwareHOTPMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SoftwareHOTPMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SoftwareHOTPMethod>(create);
  static SoftwareHOTPMethod? _defaultInstance;

  /// Software HOTP hash function. Defaults to SHA512 if not specified.
  @$pb.TagNumber(1)
  Hash get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash(Hash value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => $_clearField(1);

  /// Passcode digits length. Defaults to 7 if not specified.
  @$pb.TagNumber(2)
  $core.int get digits => $_getIZ(1);
  @$pb.TagNumber(2)
  set digits($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDigits() => $_has(1);
  @$pb.TagNumber(2)
  void clearDigits() => $_clearField(2);

  /// Software HOTP starting counter. Only included during identity creation. Defaults to 0 if not specified.
  @$pb.TagNumber(3)
  $core.int get counter => $_getIZ(2);
  @$pb.TagNumber(3)
  set counter($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCounter() => $_has(2);
  @$pb.TagNumber(3)
  void clearCounter() => $_clearField(3);

  /// Account name, such as username or email, for inclusion in QR codes. This field is never saved. If not specified, only the application display name is included in the returned QR code.
  @$pb.TagNumber(4)
  $core.String get accountName => $_getSZ(3);
  @$pb.TagNumber(4)
  set accountName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAccountName() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountName() => $_clearField(4);
}

/// SoftwareTOTPMethod configures a software OATH TOTP one-time password method.
class SoftwareTOTPMethod extends $pb.GeneratedMessage {
  factory SoftwareTOTPMethod({
    Hash? hash,
    $core.int? digits,
    $core.String? accountName,
  }) {
    final result = create();
    if (hash != null) result.hash = hash;
    if (digits != null) result.digits = digits;
    if (accountName != null) result.accountName = accountName;
    return result;
  }

  SoftwareTOTPMethod._();

  factory SoftwareTOTPMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SoftwareTOTPMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SoftwareTOTPMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aE<Hash>(1, _omitFieldNames ? '' : 'hash', enumValues: Hash.values)
    ..aI(2, _omitFieldNames ? '' : 'digits')
    ..aOS(3, _omitFieldNames ? '' : 'accountName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SoftwareTOTPMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SoftwareTOTPMethod copyWith(void Function(SoftwareTOTPMethod) updates) =>
      super.copyWith((message) => updates(message as SoftwareTOTPMethod))
          as SoftwareTOTPMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SoftwareTOTPMethod create() => SoftwareTOTPMethod._();
  @$core.override
  SoftwareTOTPMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SoftwareTOTPMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SoftwareTOTPMethod>(create);
  static SoftwareTOTPMethod? _defaultInstance;

  /// Software TOTP hash function. Defaults to SHA512 if not specified.
  @$pb.TagNumber(1)
  Hash get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash(Hash value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => $_clearField(1);

  /// Passcode digits length. Defaults to 7 if not specified.
  @$pb.TagNumber(2)
  $core.int get digits => $_getIZ(1);
  @$pb.TagNumber(2)
  set digits($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDigits() => $_has(1);
  @$pb.TagNumber(2)
  void clearDigits() => $_clearField(2);

  /// Account name, such as username or email, for inclusion in QR codes. This field is never saved. If not specified, only the application display name is included in the returned QR code.
  @$pb.TagNumber(3)
  $core.String get accountName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccountName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountName() => $_clearField(3);
}

/// GoogleAuthHOTPMethod configures a Google Authenticator HOTP one-time password method. This method is limited to 6-digit passcodes using the SHA1 hash function.
class GoogleAuthHOTPMethod extends $pb.GeneratedMessage {
  factory GoogleAuthHOTPMethod({
    $core.String? accountName,
  }) {
    final result = create();
    if (accountName != null) result.accountName = accountName;
    return result;
  }

  GoogleAuthHOTPMethod._();

  factory GoogleAuthHOTPMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GoogleAuthHOTPMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GoogleAuthHOTPMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoogleAuthHOTPMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoogleAuthHOTPMethod copyWith(void Function(GoogleAuthHOTPMethod) updates) =>
      super.copyWith((message) => updates(message as GoogleAuthHOTPMethod))
          as GoogleAuthHOTPMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoogleAuthHOTPMethod create() => GoogleAuthHOTPMethod._();
  @$core.override
  GoogleAuthHOTPMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GoogleAuthHOTPMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GoogleAuthHOTPMethod>(create);
  static GoogleAuthHOTPMethod? _defaultInstance;

  /// Account name, such as username or email, for inclusion in QR codes. This field is never saved. If not specified, only the application display name is included in the returned QR code.
  @$pb.TagNumber(1)
  $core.String get accountName => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountName() => $_clearField(1);
}

/// GoogleAuthTOTPMethod configures a Google Authenticator or Microsoft Authenticator TOTP one-time password method. This method is limited to 6-digit passcodes using the SHA1 hash function.
class GoogleAuthTOTPMethod extends $pb.GeneratedMessage {
  factory GoogleAuthTOTPMethod({
    $core.String? accountName,
  }) {
    final result = create();
    if (accountName != null) result.accountName = accountName;
    return result;
  }

  GoogleAuthTOTPMethod._();

  factory GoogleAuthTOTPMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GoogleAuthTOTPMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GoogleAuthTOTPMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoogleAuthTOTPMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoogleAuthTOTPMethod copyWith(void Function(GoogleAuthTOTPMethod) updates) =>
      super.copyWith((message) => updates(message as GoogleAuthTOTPMethod))
          as GoogleAuthTOTPMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoogleAuthTOTPMethod create() => GoogleAuthTOTPMethod._();
  @$core.override
  GoogleAuthTOTPMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GoogleAuthTOTPMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GoogleAuthTOTPMethod>(create);
  static GoogleAuthTOTPMethod? _defaultInstance;

  /// Account name, such as username or email, for inclusion in QR codes. This field is never saved. If not specified, only the application display name is included in the returned QR code.
  @$pb.TagNumber(1)
  $core.String get accountName => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountName() => $_clearField(1);
}

/// AppleiOSTOTPMethod configures an Apple iOS TOTP one-time password method.
class AppleiOSTOTPMethod extends $pb.GeneratedMessage {
  factory AppleiOSTOTPMethod() => create();

  AppleiOSTOTPMethod._();

  factory AppleiOSTOTPMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppleiOSTOTPMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppleiOSTOTPMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppleiOSTOTPMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppleiOSTOTPMethod copyWith(void Function(AppleiOSTOTPMethod) updates) =>
      super.copyWith((message) => updates(message as AppleiOSTOTPMethod))
          as AppleiOSTOTPMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppleiOSTOTPMethod create() => AppleiOSTOTPMethod._();
  @$core.override
  AppleiOSTOTPMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppleiOSTOTPMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppleiOSTOTPMethod>(create);
  static AppleiOSTOTPMethod? _defaultInstance;
}

/// HardwareHOTPMethod configures a hardware OATH HOTP one-time password method.
class HardwareHOTPMethod extends $pb.GeneratedMessage {
  factory HardwareHOTPMethod({
    Hash? hash,
    $core.int? digits,
    $core.int? counter,
    $core.List<$core.int>? secret,
  }) {
    final result = create();
    if (hash != null) result.hash = hash;
    if (digits != null) result.digits = digits;
    if (counter != null) result.counter = counter;
    if (secret != null) result.secret = secret;
    return result;
  }

  HardwareHOTPMethod._();

  factory HardwareHOTPMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HardwareHOTPMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HardwareHOTPMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aE<Hash>(1, _omitFieldNames ? '' : 'hash', enumValues: Hash.values)
    ..aI(2, _omitFieldNames ? '' : 'digits')
    ..aI(3, _omitFieldNames ? '' : 'counter')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'secret', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HardwareHOTPMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HardwareHOTPMethod copyWith(void Function(HardwareHOTPMethod) updates) =>
      super.copyWith((message) => updates(message as HardwareHOTPMethod))
          as HardwareHOTPMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HardwareHOTPMethod create() => HardwareHOTPMethod._();
  @$core.override
  HardwareHOTPMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HardwareHOTPMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HardwareHOTPMethod>(create);
  static HardwareHOTPMethod? _defaultInstance;

  /// Hardware HOTP hash function. Defaults to SHA512 if not specified.
  @$pb.TagNumber(1)
  Hash get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash(Hash value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => $_clearField(1);

  /// Passcode digits length.
  @$pb.TagNumber(2)
  $core.int get digits => $_getIZ(1);
  @$pb.TagNumber(2)
  set digits($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDigits() => $_has(1);
  @$pb.TagNumber(2)
  void clearDigits() => $_clearField(2);

  /// Hardware HOTP starting counter. Only included during identity creation. Defaults to 0 if not specified.
  @$pb.TagNumber(3)
  $core.int get counter => $_getIZ(2);
  @$pb.TagNumber(3)
  set counter($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCounter() => $_has(2);
  @$pb.TagNumber(3)
  void clearCounter() => $_clearField(3);

  /// Hardware HOTP secret. Only included during identity creation. When used in JSON, the value will be represented as a base64 string.
  @$pb.TagNumber(4)
  $core.List<$core.int> get secret => $_getN(3);
  @$pb.TagNumber(4)
  set secret($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSecret() => $_has(3);
  @$pb.TagNumber(4)
  void clearSecret() => $_clearField(4);
}

/// HardwareTOTPMethod configures a hardware OATH TOTP one-time password method.
class HardwareTOTPMethod extends $pb.GeneratedMessage {
  factory HardwareTOTPMethod({
    Hash? hash,
    $core.int? digits,
    $core.List<$core.int>? secret,
  }) {
    final result = create();
    if (hash != null) result.hash = hash;
    if (digits != null) result.digits = digits;
    if (secret != null) result.secret = secret;
    return result;
  }

  HardwareTOTPMethod._();

  factory HardwareTOTPMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HardwareTOTPMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HardwareTOTPMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aE<Hash>(1, _omitFieldNames ? '' : 'hash', enumValues: Hash.values)
    ..aI(2, _omitFieldNames ? '' : 'digits')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'secret', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HardwareTOTPMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HardwareTOTPMethod copyWith(void Function(HardwareTOTPMethod) updates) =>
      super.copyWith((message) => updates(message as HardwareTOTPMethod))
          as HardwareTOTPMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HardwareTOTPMethod create() => HardwareTOTPMethod._();
  @$core.override
  HardwareTOTPMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HardwareTOTPMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HardwareTOTPMethod>(create);
  static HardwareTOTPMethod? _defaultInstance;

  /// Hardware TOTP hash function. Defaults to SHA512 if not specified.
  @$pb.TagNumber(1)
  Hash get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash(Hash value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => $_clearField(1);

  /// Passcode digits length.
  @$pb.TagNumber(2)
  $core.int get digits => $_getIZ(1);
  @$pb.TagNumber(2)
  set digits($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDigits() => $_has(1);
  @$pb.TagNumber(2)
  void clearDigits() => $_clearField(2);

  /// Hardware TOTP secret. Only included during identity creation. When used in JSON, the value will be represented as a base64 string.
  @$pb.TagNumber(3)
  $core.List<$core.int> get secret => $_getN(2);
  @$pb.TagNumber(3)
  set secret($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSecret() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecret() => $_clearField(3);
}

/// SMSMethod configures an SMS passcode method.
class SMSMethod extends $pb.GeneratedMessage {
  factory SMSMethod({
    $core.String? phone,
  }) {
    final result = create();
    if (phone != null) result.phone = phone;
    return result;
  }

  SMSMethod._();

  factory SMSMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SMSMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SMSMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'phone')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SMSMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SMSMethod copyWith(void Function(SMSMethod) updates) =>
      super.copyWith((message) => updates(message as SMSMethod)) as SMSMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SMSMethod create() => SMSMethod._();
  @$core.override
  SMSMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SMSMethod getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SMSMethod>(create);
  static SMSMethod? _defaultInstance;

  /// Phone number. Must be in valid [E.164](https://www.twilio.com/docs/glossary/what-e164) format.
  @$pb.TagNumber(1)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(1)
  set phone($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhone() => $_clearField(1);
}

/// PushoverMethod configures a Pushover passcode method.
class PushoverMethod extends $pb.GeneratedMessage {
  factory PushoverMethod({
    $core.String? pushoverKey,
  }) {
    final result = create();
    if (pushoverKey != null) result.pushoverKey = pushoverKey;
    return result;
  }

  PushoverMethod._();

  factory PushoverMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PushoverMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PushoverMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pushoverKey')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PushoverMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PushoverMethod copyWith(void Function(PushoverMethod) updates) =>
      super.copyWith((message) => updates(message as PushoverMethod))
          as PushoverMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PushoverMethod create() => PushoverMethod._();
  @$core.override
  PushoverMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PushoverMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PushoverMethod>(create);
  static PushoverMethod? _defaultInstance;

  /// Pushover user key.
  @$pb.TagNumber(1)
  $core.String get pushoverKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set pushoverKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPushoverKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPushoverKey() => $_clearField(1);
}

/// EmailMethod configures an email passcode method.
class EmailMethod extends $pb.GeneratedMessage {
  factory EmailMethod({
    $core.String? email,
  }) {
    final result = create();
    if (email != null) result.email = email;
    return result;
  }

  EmailMethod._();

  factory EmailMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EmailMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EmailMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmailMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmailMethod copyWith(void Function(EmailMethod) updates) =>
      super.copyWith((message) => updates(message as EmailMethod))
          as EmailMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmailMethod create() => EmailMethod._();
  @$core.override
  EmailMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EmailMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EmailMethod>(create);
  static EmailMethod? _defaultInstance;

  /// Email address.
  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => $_clearField(1);
}

/// BackupsCodesMethod configures a backup codes method. Identities using this method are immediately activated and do not require activation.
class BackupsCodesMethod extends $pb.GeneratedMessage {
  factory BackupsCodesMethod({
    $core.int? passcodes,
  }) {
    final result = create();
    if (passcodes != null) result.passcodes = passcodes;
    return result;
  }

  BackupsCodesMethod._();

  factory BackupsCodesMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupsCodesMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupsCodesMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'passcodes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupsCodesMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupsCodesMethod copyWith(void Function(BackupsCodesMethod) updates) =>
      super.copyWith((message) => updates(message as BackupsCodesMethod))
          as BackupsCodesMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupsCodesMethod create() => BackupsCodesMethod._();
  @$core.override
  BackupsCodesMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupsCodesMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupsCodesMethod>(create);
  static BackupsCodesMethod? _defaultInstance;

  /// Number of passcodes provided.
  @$pb.TagNumber(1)
  $core.int get passcodes => $_getIZ(0);
  @$pb.TagNumber(1)
  set passcodes($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPasscodes() => $_has(0);
  @$pb.TagNumber(1)
  void clearPasscodes() => $_clearField(1);
}

/// SecurityQuestionsMethod configures a security questions method. Identities using this method are immediately activated and do not require activation.
class SecurityQuestionsMethod extends $pb.GeneratedMessage {
  factory SecurityQuestionsMethod({
    $core.String? answer,
  }) {
    final result = create();
    if (answer != null) result.answer = answer;
    return result;
  }

  SecurityQuestionsMethod._();

  factory SecurityQuestionsMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SecurityQuestionsMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SecurityQuestionsMethod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'answer')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SecurityQuestionsMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SecurityQuestionsMethod copyWith(
          void Function(SecurityQuestionsMethod) updates) =>
      super.copyWith((message) => updates(message as SecurityQuestionsMethod))
          as SecurityQuestionsMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecurityQuestionsMethod create() => SecurityQuestionsMethod._();
  @$core.override
  SecurityQuestionsMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SecurityQuestionsMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecurityQuestionsMethod>(create);
  static SecurityQuestionsMethod? _defaultInstance;

  /// Answer to the security question. Only included during identity creation. The security question should be stored out-of-band and queried of an external user by the consuming application.
  @$pb.TagNumber(1)
  $core.String get answer => $_getSZ(0);
  @$pb.TagNumber(1)
  set answer($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnswer() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnswer() => $_clearField(1);
}

enum Identity_MethodOneof {
  softwareTotpMethod,
  googleAuthTotpMethod,
  smsMethod,
  emailMethod,
  backupCodesMethod,
  softwareHotpMethod,
  googleAuthHotpMethod,
  hardwareHotpMethod,
  hardwareTotpMethod,
  pushoverMethod,
  securityQuestionsMethod,
  appleIosTotpMethod,
  notSet
}

/// Identity represents an identity as stored in the database.
class Identity extends $pb.GeneratedMessage {
  factory Identity({
    $core.String? id,
    $core.String? orgId,
    $core.String? appId,
    $core.String? comment,
    IdentityStatus? status,
    SoftwareTOTPMethod? softwareTotpMethod,
    GoogleAuthTOTPMethod? googleAuthTotpMethod,
    SMSMethod? smsMethod,
    EmailMethod? emailMethod,
    BackupsCodesMethod? backupCodesMethod,
    $2.Timestamp? createdAt,
    $2.Timestamp? updatedAt,
    SoftwareHOTPMethod? softwareHotpMethod,
    GoogleAuthHOTPMethod? googleAuthHotpMethod,
    HardwareHOTPMethod? hardwareHotpMethod,
    HardwareTOTPMethod? hardwareTotpMethod,
    PushoverMethod? pushoverMethod,
    SecurityQuestionsMethod? securityQuestionsMethod,
    AppleiOSTOTPMethod? appleIosTotpMethod,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (orgId != null) result.orgId = orgId;
    if (appId != null) result.appId = appId;
    if (comment != null) result.comment = comment;
    if (status != null) result.status = status;
    if (softwareTotpMethod != null)
      result.softwareTotpMethod = softwareTotpMethod;
    if (googleAuthTotpMethod != null)
      result.googleAuthTotpMethod = googleAuthTotpMethod;
    if (smsMethod != null) result.smsMethod = smsMethod;
    if (emailMethod != null) result.emailMethod = emailMethod;
    if (backupCodesMethod != null) result.backupCodesMethod = backupCodesMethod;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (softwareHotpMethod != null)
      result.softwareHotpMethod = softwareHotpMethod;
    if (googleAuthHotpMethod != null)
      result.googleAuthHotpMethod = googleAuthHotpMethod;
    if (hardwareHotpMethod != null)
      result.hardwareHotpMethod = hardwareHotpMethod;
    if (hardwareTotpMethod != null)
      result.hardwareTotpMethod = hardwareTotpMethod;
    if (pushoverMethod != null) result.pushoverMethod = pushoverMethod;
    if (securityQuestionsMethod != null)
      result.securityQuestionsMethod = securityQuestionsMethod;
    if (appleIosTotpMethod != null)
      result.appleIosTotpMethod = appleIosTotpMethod;
    return result;
  }

  Identity._();

  factory Identity.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Identity.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Identity_MethodOneof>
      _Identity_MethodOneofByTag = {
    6: Identity_MethodOneof.softwareTotpMethod,
    7: Identity_MethodOneof.googleAuthTotpMethod,
    8: Identity_MethodOneof.smsMethod,
    9: Identity_MethodOneof.emailMethod,
    10: Identity_MethodOneof.backupCodesMethod,
    16: Identity_MethodOneof.softwareHotpMethod,
    17: Identity_MethodOneof.googleAuthHotpMethod,
    18: Identity_MethodOneof.hardwareHotpMethod,
    19: Identity_MethodOneof.hardwareTotpMethod,
    20: Identity_MethodOneof.pushoverMethod,
    21: Identity_MethodOneof.securityQuestionsMethod,
    22: Identity_MethodOneof.appleIosTotpMethod,
    0: Identity_MethodOneof.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Identity',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..oo(0, [6, 7, 8, 9, 10, 16, 17, 18, 19, 20, 21, 22])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'orgID', protoName: 'org_id')
    ..aOS(3, _omitFieldNames ? '' : 'appID', protoName: 'app_id')
    ..aOS(4, _omitFieldNames ? '' : 'comment')
    ..aE<IdentityStatus>(5, _omitFieldNames ? '' : 'status',
        enumValues: IdentityStatus.values)
    ..aOM<SoftwareTOTPMethod>(6, _omitFieldNames ? '' : 'softwareTOTPMethod',
        protoName: 'software_totp_method',
        subBuilder: SoftwareTOTPMethod.create)
    ..aOM<GoogleAuthTOTPMethod>(
        7, _omitFieldNames ? '' : 'googleAuthTOTPMethod',
        protoName: 'google_auth_totp_method',
        subBuilder: GoogleAuthTOTPMethod.create)
    ..aOM<SMSMethod>(8, _omitFieldNames ? '' : 'smsMethod',
        subBuilder: SMSMethod.create)
    ..aOM<EmailMethod>(9, _omitFieldNames ? '' : 'emailMethod',
        subBuilder: EmailMethod.create)
    ..aOM<BackupsCodesMethod>(10, _omitFieldNames ? '' : 'backupCodesMethod',
        subBuilder: BackupsCodesMethod.create)
    ..aOM<$2.Timestamp>(14, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(15, _omitFieldNames ? '' : 'updatedAt',
        subBuilder: $2.Timestamp.create)
    ..aOM<SoftwareHOTPMethod>(16, _omitFieldNames ? '' : 'softwareHOTPMethod',
        protoName: 'software_hotp_method',
        subBuilder: SoftwareHOTPMethod.create)
    ..aOM<GoogleAuthHOTPMethod>(
        17, _omitFieldNames ? '' : 'googleAuthHOTPMethod',
        protoName: 'google_auth_hotp_method',
        subBuilder: GoogleAuthHOTPMethod.create)
    ..aOM<HardwareHOTPMethod>(18, _omitFieldNames ? '' : 'hardwareHOTPMethod',
        protoName: 'hardware_hotp_method',
        subBuilder: HardwareHOTPMethod.create)
    ..aOM<HardwareTOTPMethod>(19, _omitFieldNames ? '' : 'hardwareTOTPMethod',
        protoName: 'hardware_totp_method',
        subBuilder: HardwareTOTPMethod.create)
    ..aOM<PushoverMethod>(20, _omitFieldNames ? '' : 'pushoverMethod',
        subBuilder: PushoverMethod.create)
    ..aOM<SecurityQuestionsMethod>(
        21, _omitFieldNames ? '' : 'securityQuestionsMethod',
        subBuilder: SecurityQuestionsMethod.create)
    ..aOM<AppleiOSTOTPMethod>(22, _omitFieldNames ? '' : 'appleiOSTOTPMethod',
        protoName: 'apple_ios_totp_method',
        subBuilder: AppleiOSTOTPMethod.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Identity clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Identity copyWith(void Function(Identity) updates) =>
      super.copyWith((message) => updates(message as Identity)) as Identity;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Identity create() => Identity._();
  @$core.override
  Identity createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Identity getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Identity>(create);
  static Identity? _defaultInstance;

  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  Identity_MethodOneof whichMethodOneof() =>
      _Identity_MethodOneofByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  void clearMethodOneof() => $_clearField($_whichOneof(0));

  /// Identity ID (UUID).
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Organization ID (UUID).
  @$pb.TagNumber(2)
  $core.String get orgId => $_getSZ(1);
  @$pb.TagNumber(2)
  set orgId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrgId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrgId() => $_clearField(2);

  /// Application ID (UUID).
  @$pb.TagNumber(3)
  $core.String get appId => $_getSZ(2);
  @$pb.TagNumber(3)
  set appId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => $_clearField(3);

  /// Identity comment. This should be an opaque identifier known to the consuming application.
  @$pb.TagNumber(4)
  $core.String get comment => $_getSZ(3);
  @$pb.TagNumber(4)
  set comment($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasComment() => $_has(3);
  @$pb.TagNumber(4)
  void clearComment() => $_clearField(4);

  /// Identity status.
  @$pb.TagNumber(5)
  IdentityStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(IdentityStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  /// Software TOTP method configuration.
  @$pb.TagNumber(6)
  SoftwareTOTPMethod get softwareTotpMethod => $_getN(5);
  @$pb.TagNumber(6)
  set softwareTotpMethod(SoftwareTOTPMethod value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSoftwareTotpMethod() => $_has(5);
  @$pb.TagNumber(6)
  void clearSoftwareTotpMethod() => $_clearField(6);
  @$pb.TagNumber(6)
  SoftwareTOTPMethod ensureSoftwareTotpMethod() => $_ensure(5);

  /// Google Authenticator TOTP method configuration.
  @$pb.TagNumber(7)
  GoogleAuthTOTPMethod get googleAuthTotpMethod => $_getN(6);
  @$pb.TagNumber(7)
  set googleAuthTotpMethod(GoogleAuthTOTPMethod value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasGoogleAuthTotpMethod() => $_has(6);
  @$pb.TagNumber(7)
  void clearGoogleAuthTotpMethod() => $_clearField(7);
  @$pb.TagNumber(7)
  GoogleAuthTOTPMethod ensureGoogleAuthTotpMethod() => $_ensure(6);

  /// SMS method configuration.
  @$pb.TagNumber(8)
  SMSMethod get smsMethod => $_getN(7);
  @$pb.TagNumber(8)
  set smsMethod(SMSMethod value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasSmsMethod() => $_has(7);
  @$pb.TagNumber(8)
  void clearSmsMethod() => $_clearField(8);
  @$pb.TagNumber(8)
  SMSMethod ensureSmsMethod() => $_ensure(7);

  /// Email method configuration.
  @$pb.TagNumber(9)
  EmailMethod get emailMethod => $_getN(8);
  @$pb.TagNumber(9)
  set emailMethod(EmailMethod value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasEmailMethod() => $_has(8);
  @$pb.TagNumber(9)
  void clearEmailMethod() => $_clearField(9);
  @$pb.TagNumber(9)
  EmailMethod ensureEmailMethod() => $_ensure(8);

  /// Backups codes method configuration.
  @$pb.TagNumber(10)
  BackupsCodesMethod get backupCodesMethod => $_getN(9);
  @$pb.TagNumber(10)
  set backupCodesMethod(BackupsCodesMethod value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasBackupCodesMethod() => $_has(9);
  @$pb.TagNumber(10)
  void clearBackupCodesMethod() => $_clearField(10);
  @$pb.TagNumber(10)
  BackupsCodesMethod ensureBackupCodesMethod() => $_ensure(9);

  /// Identity creation timestamp.
  @$pb.TagNumber(14)
  $2.Timestamp get createdAt => $_getN(10);
  @$pb.TagNumber(14)
  set createdAt($2.Timestamp value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(14)
  void clearCreatedAt() => $_clearField(14);
  @$pb.TagNumber(14)
  $2.Timestamp ensureCreatedAt() => $_ensure(10);

  /// Identity modification timestamp.
  @$pb.TagNumber(15)
  $2.Timestamp get updatedAt => $_getN(11);
  @$pb.TagNumber(15)
  set updatedAt($2.Timestamp value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasUpdatedAt() => $_has(11);
  @$pb.TagNumber(15)
  void clearUpdatedAt() => $_clearField(15);
  @$pb.TagNumber(15)
  $2.Timestamp ensureUpdatedAt() => $_ensure(11);

  /// Software HOTP method configuration.
  @$pb.TagNumber(16)
  SoftwareHOTPMethod get softwareHotpMethod => $_getN(12);
  @$pb.TagNumber(16)
  set softwareHotpMethod(SoftwareHOTPMethod value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasSoftwareHotpMethod() => $_has(12);
  @$pb.TagNumber(16)
  void clearSoftwareHotpMethod() => $_clearField(16);
  @$pb.TagNumber(16)
  SoftwareHOTPMethod ensureSoftwareHotpMethod() => $_ensure(12);

  /// Google Authenticator HOTP method configuration.
  @$pb.TagNumber(17)
  GoogleAuthHOTPMethod get googleAuthHotpMethod => $_getN(13);
  @$pb.TagNumber(17)
  set googleAuthHotpMethod(GoogleAuthHOTPMethod value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasGoogleAuthHotpMethod() => $_has(13);
  @$pb.TagNumber(17)
  void clearGoogleAuthHotpMethod() => $_clearField(17);
  @$pb.TagNumber(17)
  GoogleAuthHOTPMethod ensureGoogleAuthHotpMethod() => $_ensure(13);

  /// Hardware HOTP method configuration.
  @$pb.TagNumber(18)
  HardwareHOTPMethod get hardwareHotpMethod => $_getN(14);
  @$pb.TagNumber(18)
  set hardwareHotpMethod(HardwareHOTPMethod value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasHardwareHotpMethod() => $_has(14);
  @$pb.TagNumber(18)
  void clearHardwareHotpMethod() => $_clearField(18);
  @$pb.TagNumber(18)
  HardwareHOTPMethod ensureHardwareHotpMethod() => $_ensure(14);

  /// Hardware TOTP method configuration.
  @$pb.TagNumber(19)
  HardwareTOTPMethod get hardwareTotpMethod => $_getN(15);
  @$pb.TagNumber(19)
  set hardwareTotpMethod(HardwareTOTPMethod value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasHardwareTotpMethod() => $_has(15);
  @$pb.TagNumber(19)
  void clearHardwareTotpMethod() => $_clearField(19);
  @$pb.TagNumber(19)
  HardwareTOTPMethod ensureHardwareTotpMethod() => $_ensure(15);

  /// Pushover method configuration.
  @$pb.TagNumber(20)
  PushoverMethod get pushoverMethod => $_getN(16);
  @$pb.TagNumber(20)
  set pushoverMethod(PushoverMethod value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasPushoverMethod() => $_has(16);
  @$pb.TagNumber(20)
  void clearPushoverMethod() => $_clearField(20);
  @$pb.TagNumber(20)
  PushoverMethod ensurePushoverMethod() => $_ensure(16);

  /// Security questions method configuration.
  @$pb.TagNumber(21)
  SecurityQuestionsMethod get securityQuestionsMethod => $_getN(17);
  @$pb.TagNumber(21)
  set securityQuestionsMethod(SecurityQuestionsMethod value) =>
      $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasSecurityQuestionsMethod() => $_has(17);
  @$pb.TagNumber(21)
  void clearSecurityQuestionsMethod() => $_clearField(21);
  @$pb.TagNumber(21)
  SecurityQuestionsMethod ensureSecurityQuestionsMethod() => $_ensure(17);

  /// Apple iOS TOTP method configuration.
  @$pb.TagNumber(22)
  AppleiOSTOTPMethod get appleIosTotpMethod => $_getN(18);
  @$pb.TagNumber(22)
  set appleIosTotpMethod(AppleiOSTOTPMethod value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasAppleIosTotpMethod() => $_has(18);
  @$pb.TagNumber(22)
  void clearAppleIosTotpMethod() => $_clearField(22);
  @$pb.TagNumber(22)
  AppleiOSTOTPMethod ensureAppleIosTotpMethod() => $_ensure(18);
}

/// CreateIdentityRequest is sent to create an identity.
class CreateIdentityRequest extends $pb.GeneratedMessage {
  factory CreateIdentityRequest({
    Identity? identity,
  }) {
    final result = create();
    if (identity != null) result.identity = identity;
    return result;
  }

  CreateIdentityRequest._();

  factory CreateIdentityRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateIdentityRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateIdentityRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOM<Identity>(1, _omitFieldNames ? '' : 'identity',
        subBuilder: Identity.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateIdentityRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateIdentityRequest copyWith(
          void Function(CreateIdentityRequest) updates) =>
      super.copyWith((message) => updates(message as CreateIdentityRequest))
          as CreateIdentityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateIdentityRequest create() => CreateIdentityRequest._();
  @$core.override
  CreateIdentityRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateIdentityRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateIdentityRequest>(create);
  static CreateIdentityRequest? _defaultInstance;

  /// Identity message to create.
  @$pb.TagNumber(1)
  Identity get identity => $_getN(0);
  @$pb.TagNumber(1)
  set identity(Identity value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => $_clearField(1);
  @$pb.TagNumber(1)
  Identity ensureIdentity() => $_ensure(0);
}

/// CreateIdentityResponse is sent in response to an identity creation.
class CreateIdentityResponse extends $pb.GeneratedMessage {
  factory CreateIdentityResponse({
    Identity? identity,
    $core.String? secret,
    $core.List<$core.int>? qr,
    $core.Iterable<$core.String>? passcodes,
  }) {
    final result = create();
    if (identity != null) result.identity = identity;
    if (secret != null) result.secret = secret;
    if (qr != null) result.qr = qr;
    if (passcodes != null) result.passcodes.addAll(passcodes);
    return result;
  }

  CreateIdentityResponse._();

  factory CreateIdentityResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateIdentityResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateIdentityResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOM<Identity>(1, _omitFieldNames ? '' : 'identity',
        subBuilder: Identity.create)
    ..aOS(2, _omitFieldNames ? '' : 'secret')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'qr', $pb.PbFieldType.OY)
    ..pPS(4, _omitFieldNames ? '' : 'passcodes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateIdentityResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateIdentityResponse copyWith(
          void Function(CreateIdentityResponse) updates) =>
      super.copyWith((message) => updates(message as CreateIdentityResponse))
          as CreateIdentityResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateIdentityResponse create() => CreateIdentityResponse._();
  @$core.override
  CreateIdentityResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateIdentityResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateIdentityResponse>(create);
  static CreateIdentityResponse? _defaultInstance;

  /// Identity message created.
  @$pb.TagNumber(1)
  Identity get identity => $_getN(0);
  @$pb.TagNumber(1)
  set identity(Identity value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => $_clearField(1);
  @$pb.TagNumber(1)
  Identity ensureIdentity() => $_ensure(0);

  /// Secret in base32 format, for identity methods that provide secrets. Only returned once, upon identity creation.
  @$pb.TagNumber(2)
  $core.String get secret => $_getSZ(1);
  @$pb.TagNumber(2)
  set secret($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecret() => $_clearField(2);

  /// Identity QR code, in Google Authenticator-compatible format, as a PNG image. For identity methods that provide secrets. Only returned once, upon identity creation. When used in JSON, the value will be represented as a base64 string.
  @$pb.TagNumber(3)
  $core.List<$core.int> get qr => $_getN(2);
  @$pb.TagNumber(3)
  set qr($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasQr() => $_has(2);
  @$pb.TagNumber(3)
  void clearQr() => $_clearField(3);

  /// Passcode array, for identity methods that provide pregenerated passcodes. Only returned once, upon identity creation.
  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get passcodes => $_getList(3);
}

/// ActivateIdentityRequest is sent to activate an identity.
class ActivateIdentityRequest extends $pb.GeneratedMessage {
  factory ActivateIdentityRequest({
    $core.String? id,
    $core.String? appId,
    $core.String? passcode,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (appId != null) result.appId = appId;
    if (passcode != null) result.passcode = passcode;
    return result;
  }

  ActivateIdentityRequest._();

  factory ActivateIdentityRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ActivateIdentityRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActivateIdentityRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'appID', protoName: 'app_id')
    ..aOS(3, _omitFieldNames ? '' : 'passcode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivateIdentityRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivateIdentityRequest copyWith(
          void Function(ActivateIdentityRequest) updates) =>
      super.copyWith((message) => updates(message as ActivateIdentityRequest))
          as ActivateIdentityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivateIdentityRequest create() => ActivateIdentityRequest._();
  @$core.override
  ActivateIdentityRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ActivateIdentityRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActivateIdentityRequest>(create);
  static ActivateIdentityRequest? _defaultInstance;

  /// Identity ID (UUID) to activate.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Application ID (UUID).
  @$pb.TagNumber(2)
  $core.String get appId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppId() => $_clearField(2);

  /// Passcode for verification. For security questions identity methods, this is the answer to the security question.
  @$pb.TagNumber(3)
  $core.String get passcode => $_getSZ(2);
  @$pb.TagNumber(3)
  set passcode($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPasscode() => $_has(2);
  @$pb.TagNumber(3)
  void clearPasscode() => $_clearField(3);
}

/// ChallengeIdentityRequest is sent to issue a challenge to an identity.
class ChallengeIdentityRequest extends $pb.GeneratedMessage {
  factory ChallengeIdentityRequest({
    $core.String? id,
    $core.String? appId,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (appId != null) result.appId = appId;
    return result;
  }

  ChallengeIdentityRequest._();

  factory ChallengeIdentityRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChallengeIdentityRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChallengeIdentityRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'appID', protoName: 'app_id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChallengeIdentityRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChallengeIdentityRequest copyWith(
          void Function(ChallengeIdentityRequest) updates) =>
      super.copyWith((message) => updates(message as ChallengeIdentityRequest))
          as ChallengeIdentityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChallengeIdentityRequest create() => ChallengeIdentityRequest._();
  @$core.override
  ChallengeIdentityRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChallengeIdentityRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChallengeIdentityRequest>(create);
  static ChallengeIdentityRequest? _defaultInstance;

  /// Identity ID (UUID) to issue challenge. The rate limit for methods that send notifications is one challenge per identity every 30 seconds.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Application ID (UUID).
  @$pb.TagNumber(2)
  $core.String get appId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppId() => $_clearField(2);
}

/// VerifyIdentityRequest is sent to verify an identity. If verification fails, the request does not automatically fall through to a backup codes method. Consuming applications should design a workflow that either explicitly verifies by backup codes or falls through on failure.
class VerifyIdentityRequest extends $pb.GeneratedMessage {
  factory VerifyIdentityRequest({
    $core.String? id,
    $core.String? appId,
    $core.String? passcode,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (appId != null) result.appId = appId;
    if (passcode != null) result.passcode = passcode;
    return result;
  }

  VerifyIdentityRequest._();

  factory VerifyIdentityRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VerifyIdentityRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerifyIdentityRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'appID', protoName: 'app_id')
    ..aOS(3, _omitFieldNames ? '' : 'passcode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyIdentityRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyIdentityRequest copyWith(
          void Function(VerifyIdentityRequest) updates) =>
      super.copyWith((message) => updates(message as VerifyIdentityRequest))
          as VerifyIdentityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyIdentityRequest create() => VerifyIdentityRequest._();
  @$core.override
  VerifyIdentityRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VerifyIdentityRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerifyIdentityRequest>(create);
  static VerifyIdentityRequest? _defaultInstance;

  /// Identity ID (UUID) to verify.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Application ID (UUID).
  @$pb.TagNumber(2)
  $core.String get appId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppId() => $_clearField(2);

  /// Passcode for verification. For security questions identity methods, this is the answer to the security question.
  @$pb.TagNumber(3)
  $core.String get passcode => $_getSZ(2);
  @$pb.TagNumber(3)
  set passcode($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPasscode() => $_has(2);
  @$pb.TagNumber(3)
  void clearPasscode() => $_clearField(3);
}

/// GetIdentityRequest is sent to get an identity.
class GetIdentityRequest extends $pb.GeneratedMessage {
  factory GetIdentityRequest({
    $core.String? id,
    $core.String? appId,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (appId != null) result.appId = appId;
    return result;
  }

  GetIdentityRequest._();

  factory GetIdentityRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetIdentityRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetIdentityRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'appID', protoName: 'app_id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetIdentityRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetIdentityRequest copyWith(void Function(GetIdentityRequest) updates) =>
      super.copyWith((message) => updates(message as GetIdentityRequest))
          as GetIdentityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetIdentityRequest create() => GetIdentityRequest._();
  @$core.override
  GetIdentityRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetIdentityRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetIdentityRequest>(create);
  static GetIdentityRequest? _defaultInstance;

  /// Identity ID (UUID) to get. Identity method_oneof may be returned in simplified form.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Application ID (UUID).
  @$pb.TagNumber(2)
  $core.String get appId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppId() => $_clearField(2);
}

/// DeleteIdentityRequest is sent to delete an identity.
class DeleteIdentityRequest extends $pb.GeneratedMessage {
  factory DeleteIdentityRequest({
    $core.String? id,
    $core.String? appId,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (appId != null) result.appId = appId;
    return result;
  }

  DeleteIdentityRequest._();

  factory DeleteIdentityRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteIdentityRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteIdentityRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'appID', protoName: 'app_id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteIdentityRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteIdentityRequest copyWith(
          void Function(DeleteIdentityRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteIdentityRequest))
          as DeleteIdentityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteIdentityRequest create() => DeleteIdentityRequest._();
  @$core.override
  DeleteIdentityRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteIdentityRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteIdentityRequest>(create);
  static DeleteIdentityRequest? _defaultInstance;

  /// Identity ID (UUID) to delete.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Application ID (UUID).
  @$pb.TagNumber(2)
  $core.String get appId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppId() => $_clearField(2);
}

/// ListIdentitiesRequest is sent to list identities.
class ListIdentitiesRequest extends $pb.GeneratedMessage {
  factory ListIdentitiesRequest({
    $core.int? pageSize,
    $core.String? pageToken,
    $core.String? appId,
  }) {
    final result = create();
    if (pageSize != null) result.pageSize = pageSize;
    if (pageToken != null) result.pageToken = pageToken;
    if (appId != null) result.appId = appId;
    return result;
  }

  ListIdentitiesRequest._();

  factory ListIdentitiesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListIdentitiesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListIdentitiesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'pageSize')
    ..aOS(2, _omitFieldNames ? '' : 'pageToken')
    ..aOS(3, _omitFieldNames ? '' : 'appID', protoName: 'app_id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListIdentitiesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListIdentitiesRequest copyWith(
          void Function(ListIdentitiesRequest) updates) =>
      super.copyWith((message) => updates(message as ListIdentitiesRequest))
          as ListIdentitiesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListIdentitiesRequest create() => ListIdentitiesRequest._();
  @$core.override
  ListIdentitiesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListIdentitiesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListIdentitiesRequest>(create);
  static ListIdentitiesRequest? _defaultInstance;

  /// Number of identities to retrieve in a single page. Defaults to 50 if not specified, with a maximum of 250.
  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => $_clearField(1);

  /// Token of the page to retrieve. If not specified, the first page of results will be returned. To request the next page of results, use next_page_token from the previous response.
  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => $_clearField(2);

  /// Application ID (UUID). If not specified, all rules are included.
  @$pb.TagNumber(3)
  $core.String get appId => $_getSZ(2);
  @$pb.TagNumber(3)
  set appId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => $_clearField(3);
}

/// ListIdentitiesResponse is sent in response to an identity list.
class ListIdentitiesResponse extends $pb.GeneratedMessage {
  factory ListIdentitiesResponse({
    $core.Iterable<Identity>? identities,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final result = create();
    if (identities != null) result.identities.addAll(identities);
    if (nextPageToken != null) result.nextPageToken = nextPageToken;
    if (totalSize != null) result.totalSize = totalSize;
    return result;
  }

  ListIdentitiesResponse._();

  factory ListIdentitiesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListIdentitiesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListIdentitiesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'ownmfa.api'),
      createEmptyInstance: create)
    ..pPM<Identity>(1, _omitFieldNames ? '' : 'identities',
        subBuilder: Identity.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..aI(3, _omitFieldNames ? '' : 'totalSize')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListIdentitiesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListIdentitiesResponse copyWith(
          void Function(ListIdentitiesResponse) updates) =>
      super.copyWith((message) => updates(message as ListIdentitiesResponse))
          as ListIdentitiesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListIdentitiesResponse create() => ListIdentitiesResponse._();
  @$core.override
  ListIdentitiesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListIdentitiesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListIdentitiesResponse>(create);
  static ListIdentitiesResponse? _defaultInstance;

  /// Identity array, ordered by ascending created_at timestamp.
  @$pb.TagNumber(1)
  $pb.PbList<Identity> get identities => $_getList(0);

  /// Pagination token used to retrieve the next page of results. Not returned for the last page.
  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => $_clearField(2);

  /// Total number of identities available.
  @$pb.TagNumber(3)
  $core.int get totalSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalSize($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
