# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_event.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from google.protobuf import timestamp_pb2 as google_dot_protobuf_dot_timestamp__pb2
from google.api import annotations_pb2 as google_dot_api_dot_annotations__pb2
from google.api import field_behavior_pb2 as google_dot_api_dot_field__behavior__pb2
from validate import validate_pb2 as validate_dot_validate__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x16\x61pi/ownmfa_event.proto\x12\nownmfa.api\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x17validate/validate.proto\"\xd0\x01\n\x05\x45vent\x12\x15\n\x06org_id\x18\x01 \x01(\tR\x05orgID\x12\x15\n\x06\x61pp_id\x18\x02 \x01(\tR\x05\x61ppID\x12\x1f\n\x0bidentity_id\x18\x03 \x01(\tR\nidentityID\x12\'\n\x06status\x18\x04 \x01(\x0e\x32\x17.ownmfa.api.EventStatus\x12\r\n\x05\x65rror\x18\x05 \x01(\t\x12.\n\ncreated_at\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x10\n\x08trace_id\x18\x07 \x01(\t\"\xa0\x01\n\x11ListEventsRequest\x12-\n\x0bidentity_id\x18\x01 \x01(\tB\x0c\xe2\x41\x01\x02\xfa\x42\x05r\x03\xb0\x01\x01R\nidentityID\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12.\n\nstart_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"7\n\x12ListEventsResponse\x12!\n\x06\x65vents\x18\x01 \x03(\x0b\x32\x11.ownmfa.api.Event\"g\n\x13LatestEventsRequest\x12\"\n\x06\x61pp_id\x18\x01 \x01(\tB\x0b\xfa\x42\x08r\x06\xb0\x01\x01\xd0\x01\x01R\x05\x61ppID\x12,\n\x0bidentity_id\x18\x02 \x01(\tB\x0b\xfa\x42\x08r\x06\xb0\x01\x01\xd0\x01\x01R\nidentityID\"9\n\x14LatestEventsResponse\x12!\n\x06\x65vents\x18\x01 \x03(\x0b\x32\x11.ownmfa.api.Event*\xe1\x01\n\x0b\x45ventStatus\x12\x1c\n\x18\x45VENT_STATUS_UNSPECIFIED\x10\x00\x12\x14\n\x10IDENTITY_CREATED\x10\x01\x12\x12\n\x0e\x43HALLENGE_SENT\x10\x02\x12\x12\n\x0e\x43HALLENGE_NOOP\x10\x03\x12\x12\n\x0e\x43HALLENGE_FAIL\x10\x04\x12\x14\n\x10\x41\x43TIVATE_SUCCESS\x10\x05\x12\x11\n\rACTIVATE_FAIL\x10\x06\x12\x12\n\x0eVERIFY_SUCCESS\x10\x07\x12\x0f\n\x0bVERIFY_FAIL\x10\x08\x12\x14\n\x10IDENTITY_DELETED\x10\t2\xdd\x01\n\x0c\x45ventService\x12_\n\nListEvents\x12\x1d.ownmfa.api.ListEventsRequest\x1a\x1e.ownmfa.api.ListEventsResponse\"\x12\x82\xd3\xe4\x93\x02\x0c\x12\n/v1/events\x12l\n\x0cLatestEvents\x12\x1f.ownmfa.api.LatestEventsRequest\x1a .ownmfa.api.LatestEventsResponse\"\x19\x82\xd3\xe4\x93\x02\x13\x12\x11/v1/events/latestB\x1eZ\x1cgithub.com/ownmfa/api/go/apib\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'api.ownmfa_event_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:

  DESCRIPTOR._options = None
  DESCRIPTOR._serialized_options = b'Z\034github.com/ownmfa/api/go/api'
  _LISTEVENTSREQUEST.fields_by_name['identity_id']._options = None
  _LISTEVENTSREQUEST.fields_by_name['identity_id']._serialized_options = b'\342A\001\002\372B\005r\003\260\001\001'
  _LATESTEVENTSREQUEST.fields_by_name['app_id']._options = None
  _LATESTEVENTSREQUEST.fields_by_name['app_id']._serialized_options = b'\372B\010r\006\260\001\001\320\001\001'
  _LATESTEVENTSREQUEST.fields_by_name['identity_id']._options = None
  _LATESTEVENTSREQUEST.fields_by_name['identity_id']._serialized_options = b'\372B\010r\006\260\001\001\320\001\001'
  _EVENTSERVICE.methods_by_name['ListEvents']._options = None
  _EVENTSERVICE.methods_by_name['ListEvents']._serialized_options = b'\202\323\344\223\002\014\022\n/v1/events'
  _EVENTSERVICE.methods_by_name['LatestEvents']._options = None
  _EVENTSERVICE.methods_by_name['LatestEvents']._serialized_options = b'\202\323\344\223\002\023\022\021/v1/events/latest'
  _globals['_EVENTSTATUS']._serialized_start=755
  _globals['_EVENTSTATUS']._serialized_end=980
  _globals['_EVENT']._serialized_start=160
  _globals['_EVENT']._serialized_end=368
  _globals['_LISTEVENTSREQUEST']._serialized_start=371
  _globals['_LISTEVENTSREQUEST']._serialized_end=531
  _globals['_LISTEVENTSRESPONSE']._serialized_start=533
  _globals['_LISTEVENTSRESPONSE']._serialized_end=588
  _globals['_LATESTEVENTSREQUEST']._serialized_start=590
  _globals['_LATESTEVENTSREQUEST']._serialized_end=693
  _globals['_LATESTEVENTSRESPONSE']._serialized_start=695
  _globals['_LATESTEVENTSRESPONSE']._serialized_end=752
  _globals['_EVENTSERVICE']._serialized_start=983
  _globals['_EVENTSERVICE']._serialized_end=1204
# @@protoc_insertion_point(module_scope)
