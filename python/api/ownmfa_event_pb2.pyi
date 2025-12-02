from google.protobuf import timestamp_pb2 as _timestamp_pb2
from google.api import annotations_pb2 as _annotations_pb2
from google.api import field_behavior_pb2 as _field_behavior_pb2
from validate import validate_pb2 as _validate_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Iterable as _Iterable, Mapping as _Mapping, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class EventStatus(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    EVENT_STATUS_UNSPECIFIED: _ClassVar[EventStatus]
    IDENTITY_CREATED: _ClassVar[EventStatus]
    CHALLENGE_SENT: _ClassVar[EventStatus]
    CHALLENGE_NOOP: _ClassVar[EventStatus]
    CHALLENGE_FAIL: _ClassVar[EventStatus]
    ACTIVATE_SUCCESS: _ClassVar[EventStatus]
    ACTIVATE_FAIL: _ClassVar[EventStatus]
    VERIFY_SUCCESS: _ClassVar[EventStatus]
    VERIFY_FAIL: _ClassVar[EventStatus]
    IDENTITY_DELETED: _ClassVar[EventStatus]
EVENT_STATUS_UNSPECIFIED: EventStatus
IDENTITY_CREATED: EventStatus
CHALLENGE_SENT: EventStatus
CHALLENGE_NOOP: EventStatus
CHALLENGE_FAIL: EventStatus
ACTIVATE_SUCCESS: EventStatus
ACTIVATE_FAIL: EventStatus
VERIFY_SUCCESS: EventStatus
VERIFY_FAIL: EventStatus
IDENTITY_DELETED: EventStatus

class Event(_message.Message):
    __slots__ = ("org_id", "app_id", "identity_id", "status", "error", "created_at", "trace_id")
    ORG_ID_FIELD_NUMBER: _ClassVar[int]
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    IDENTITY_ID_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    CREATED_AT_FIELD_NUMBER: _ClassVar[int]
    TRACE_ID_FIELD_NUMBER: _ClassVar[int]
    org_id: str
    app_id: str
    identity_id: str
    status: EventStatus
    error: str
    created_at: _timestamp_pb2.Timestamp
    trace_id: str
    def __init__(self, org_id: _Optional[str] = ..., app_id: _Optional[str] = ..., identity_id: _Optional[str] = ..., status: _Optional[_Union[EventStatus, str]] = ..., error: _Optional[str] = ..., created_at: _Optional[_Union[_timestamp_pb2.Timestamp, _Mapping]] = ..., trace_id: _Optional[str] = ...) -> None: ...

class ListEventsRequest(_message.Message):
    __slots__ = ("identity_id", "end_time", "start_time")
    IDENTITY_ID_FIELD_NUMBER: _ClassVar[int]
    END_TIME_FIELD_NUMBER: _ClassVar[int]
    START_TIME_FIELD_NUMBER: _ClassVar[int]
    identity_id: str
    end_time: _timestamp_pb2.Timestamp
    start_time: _timestamp_pb2.Timestamp
    def __init__(self, identity_id: _Optional[str] = ..., end_time: _Optional[_Union[_timestamp_pb2.Timestamp, _Mapping]] = ..., start_time: _Optional[_Union[_timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ListEventsResponse(_message.Message):
    __slots__ = ("events",)
    EVENTS_FIELD_NUMBER: _ClassVar[int]
    events: _containers.RepeatedCompositeFieldContainer[Event]
    def __init__(self, events: _Optional[_Iterable[_Union[Event, _Mapping]]] = ...) -> None: ...

class LatestEventsRequest(_message.Message):
    __slots__ = ("app_id", "identity_id")
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    IDENTITY_ID_FIELD_NUMBER: _ClassVar[int]
    app_id: str
    identity_id: str
    def __init__(self, app_id: _Optional[str] = ..., identity_id: _Optional[str] = ...) -> None: ...

class LatestEventsResponse(_message.Message):
    __slots__ = ("events",)
    EVENTS_FIELD_NUMBER: _ClassVar[int]
    events: _containers.RepeatedCompositeFieldContainer[Event]
    def __init__(self, events: _Optional[_Iterable[_Union[Event, _Mapping]]] = ...) -> None: ...
