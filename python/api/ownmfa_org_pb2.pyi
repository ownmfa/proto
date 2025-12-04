import datetime

from api import ownmfa_status_pb2 as _ownmfa_status_pb2
from google.protobuf import empty_pb2 as _empty_pb2
from google.protobuf import timestamp_pb2 as _timestamp_pb2
from google.protobuf import field_mask_pb2 as _field_mask_pb2
from google.api import annotations_pb2 as _annotations_pb2
from google.api import field_behavior_pb2 as _field_behavior_pb2
from protoc_gen_openapiv2.options import annotations_pb2 as _annotations_pb2_1
from validate import validate_pb2 as _validate_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Plan(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    PLAN_UNSPECIFIED: _ClassVar[Plan]
    PAYMENT_FAIL: _ClassVar[Plan]
    STARTER: _ClassVar[Plan]
    PRO: _ClassVar[Plan]
    ENTERPRISE: _ClassVar[Plan]
PLAN_UNSPECIFIED: Plan
PAYMENT_FAIL: Plan
STARTER: Plan
PRO: Plan
ENTERPRISE: Plan

class Org(_message.Message):
    __slots__ = ("id", "name", "status", "plan", "created_at", "updated_at")
    ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    PLAN_FIELD_NUMBER: _ClassVar[int]
    CREATED_AT_FIELD_NUMBER: _ClassVar[int]
    UPDATED_AT_FIELD_NUMBER: _ClassVar[int]
    id: str
    name: str
    status: _ownmfa_status_pb2.Status
    plan: Plan
    created_at: _timestamp_pb2.Timestamp
    updated_at: _timestamp_pb2.Timestamp
    def __init__(self, id: _Optional[str] = ..., name: _Optional[str] = ..., status: _Optional[_Union[_ownmfa_status_pb2.Status, str]] = ..., plan: _Optional[_Union[Plan, str]] = ..., created_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., updated_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class CreateOrgRequest(_message.Message):
    __slots__ = ("org",)
    ORG_FIELD_NUMBER: _ClassVar[int]
    org: Org
    def __init__(self, org: _Optional[_Union[Org, _Mapping]] = ...) -> None: ...

class GetOrgRequest(_message.Message):
    __slots__ = ("id",)
    ID_FIELD_NUMBER: _ClassVar[int]
    id: str
    def __init__(self, id: _Optional[str] = ...) -> None: ...

class UpdateOrgRequest(_message.Message):
    __slots__ = ("org", "update_mask")
    ORG_FIELD_NUMBER: _ClassVar[int]
    UPDATE_MASK_FIELD_NUMBER: _ClassVar[int]
    org: Org
    update_mask: _field_mask_pb2.FieldMask
    def __init__(self, org: _Optional[_Union[Org, _Mapping]] = ..., update_mask: _Optional[_Union[_field_mask_pb2.FieldMask, _Mapping]] = ...) -> None: ...

class DeleteOrgRequest(_message.Message):
    __slots__ = ("id",)
    ID_FIELD_NUMBER: _ClassVar[int]
    id: str
    def __init__(self, id: _Optional[str] = ...) -> None: ...

class ListOrgsRequest(_message.Message):
    __slots__ = ("page_size", "page_token")
    PAGE_SIZE_FIELD_NUMBER: _ClassVar[int]
    PAGE_TOKEN_FIELD_NUMBER: _ClassVar[int]
    page_size: int
    page_token: str
    def __init__(self, page_size: _Optional[int] = ..., page_token: _Optional[str] = ...) -> None: ...

class ListOrgsResponse(_message.Message):
    __slots__ = ("orgs", "next_page_token", "total_size")
    ORGS_FIELD_NUMBER: _ClassVar[int]
    NEXT_PAGE_TOKEN_FIELD_NUMBER: _ClassVar[int]
    TOTAL_SIZE_FIELD_NUMBER: _ClassVar[int]
    orgs: _containers.RepeatedCompositeFieldContainer[Org]
    next_page_token: str
    total_size: int
    def __init__(self, orgs: _Optional[_Iterable[_Union[Org, _Mapping]]] = ..., next_page_token: _Optional[str] = ..., total_size: _Optional[int] = ...) -> None: ...
