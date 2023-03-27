from google.protobuf import timestamp_pb2 as _timestamp_pb2
from google.api import annotations_pb2 as _annotations_pb2
from google.api import field_behavior_pb2 as _field_behavior_pb2
from validate import validate_pb2 as _validate_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Iterable as _Iterable, Mapping as _Mapping, Optional as _Optional, Union as _Union

ACTIVATE_FAIL: EventStatus
ACTIVATE_SUCCESS: EventStatus
CHALLENGE_FAIL: EventStatus
CHALLENGE_NOOP: EventStatus
CHALLENGE_SENT: EventStatus
DESCRIPTOR: _descriptor.FileDescriptor
EVENT_STATUS_UNSPECIFIED: EventStatus
IDENTITY_CREATED: EventStatus
IDENTITY_DELETED: EventStatus
VERIFY_FAIL: EventStatus
VERIFY_SUCCESS: EventStatus

class Event(_message.Message):
    __slots__ = ["app_id", "created_at", "error", "identity_id", "org_id", "status", "trace_id"]
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    CREATED_AT_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    IDENTITY_ID_FIELD_NUMBER: _ClassVar[int]
    ORG_ID_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    TRACE_ID_FIELD_NUMBER: _ClassVar[int]
    app_id: str
    created_at: _timestamp_pb2.Timestamp
    error: str
    identity_id: str
    org_id: str
    status: EventStatus
    trace_id: str
    def __init__(self, org_id: _Optional[str] = ..., app_id: _Optional[str] = ..., identity_id: _Optional[str] = ..., status: _Optional[_Union[EventStatus, str]] = ..., error: _Optional[str] = ..., created_at: _Optional[_Union[_timestamp_pb2.Timestamp, _Mapping]] = ..., trace_id: _Optional[str] = ...) -> None: ...

class LatestEventsRequest(_message.Message):
    __slots__ = ["app_id", "identity_id"]
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    IDENTITY_ID_FIELD_NUMBER: _ClassVar[int]
    app_id: str
    identity_id: str
    def __init__(self, app_id: _Optional[str] = ..., identity_id: _Optional[str] = ...) -> None: ...

class LatestEventsResponse(_message.Message):
    __slots__ = ["events"]
    EVENTS_FIELD_NUMBER: _ClassVar[int]
    events: _containers.RepeatedCompositeFieldContainer[Event]
    def __init__(self, events: _Optional[_Iterable[_Union[Event, _Mapping]]] = ...) -> None: ...

class ListEventsRequest(_message.Message):
    __slots__ = ["end_time", "identity_id", "start_time"]
    END_TIME_FIELD_NUMBER: _ClassVar[int]
    IDENTITY_ID_FIELD_NUMBER: _ClassVar[int]
    START_TIME_FIELD_NUMBER: _ClassVar[int]
    end_time: _timestamp_pb2.Timestamp
    identity_id: str
    start_time: _timestamp_pb2.Timestamp
    def __init__(self, identity_id: _Optional[str] = ..., end_time: _Optional[_Union[_timestamp_pb2.Timestamp, _Mapping]] = ..., start_time: _Optional[_Union[_timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ListEventsResponse(_message.Message):
    __slots__ = ["events"]
    EVENTS_FIELD_NUMBER: _ClassVar[int]
    events: _containers.RepeatedCompositeFieldContainer[Event]
    def __init__(self, events: _Optional[_Iterable[_Union[Event, _Mapping]]] = ...) -> None: ...

class EventStatus(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = []
