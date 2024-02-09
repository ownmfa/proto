# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_session.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from api import ownmfa_role_pb2 as api_dot_ownmfa__role__pb2
from google.protobuf import empty_pb2 as google_dot_protobuf_dot_empty__pb2
from google.protobuf import timestamp_pb2 as google_dot_protobuf_dot_timestamp__pb2
from google.api import annotations_pb2 as google_dot_api_dot_annotations__pb2
from google.api import field_behavior_pb2 as google_dot_api_dot_field__behavior__pb2
from protoc_gen_openapiv2.options import annotations_pb2 as protoc__gen__openapiv2_dot_options_dot_annotations__pb2
from validate import validate_pb2 as validate_dot_validate__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x18\x61pi/ownmfa_session.proto\x12\nownmfa.api\x1a\x15\x61pi/ownmfa_role.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a.protoc-gen-openapiv2/options/annotations.proto\x1a\x17validate/validate.proto\"P\n\x0cLoginRequest\x12\x12\n\x05\x65mail\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08org_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08password\x18\x03 \x01(\tB\x03\xe0\x41\x02\"N\n\rLoginResponse\x12\r\n\x05token\x18\x01 \x01(\t\x12.\n\nexpires_at\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xb6\x01\n\x03Key\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\x06org_id\x18\x02 \x01(\tB\x03\xe0\x41\x03R\x05orgID\x12\x1a\n\x04name\x18\x03 \x01(\tB\x0c\xe0\x41\x02\xfa\x42\x06r\x04\x10\x05\x18P\x12\x31\n\x04role\x18\x04 \x01(\x0e\x32\x10.ownmfa.api.RoleB\x11\xe0\x41\x02\xfa\x42\x0b\x82\x01\x08\x18\x04\x18\x08\x18\x0c\x18\x0f\x12\x33\n\ncreated_at\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"=\n\x10\x43reateKeyRequest\x12)\n\x03key\x18\x01 \x01(\x0b\x32\x0f.ownmfa.api.KeyB\x0b\xe0\x41\x02\xfa\x42\x05\x8a\x01\x02\x10\x01\"@\n\x11\x43reateKeyResponse\x12\x1c\n\x03key\x18\x01 \x01(\x0b\x32\x0f.ownmfa.api.Key\x12\r\n\x05token\x18\x02 \x01(\t\"+\n\x10\x44\x65leteKeyRequest\x12\x17\n\x02id\x18\x01 \x01(\tB\x0b\xe0\x41\x02\xfa\x42\x05r\x03\xb0\x01\x01\"B\n\x0fListKeysRequest\x12\x1b\n\tpage_size\x18\x01 \x01(\x05\x42\x08\xfa\x42\x05\x1a\x03\x18\xfa\x01\x12\x12\n\npage_token\x18\x02 \x01(\t\"^\n\x10ListKeysResponse\x12\x1d\n\x04keys\x18\x01 \x03(\x0b\x32\x0f.ownmfa.api.Key\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x03 \x01(\x05\x32\x90\x04\n\x0eSessionService\x12`\n\x05Login\x12\x18.ownmfa.api.LoginRequest\x1a\x19.ownmfa.api.LoginResponse\"\"\x92\x41\x02\x62\x00\x82\xd3\xe4\x93\x02\x17\"\x12/v1/sessions/login:\x01*\x12\xaf\x01\n\tCreateKey\x12\x1c.ownmfa.api.CreateKeyRequest\x1a\x1d.ownmfa.api.CreateKeyResponse\"e\x92\x41\x44JB\n\x03\x32\x30\x31\x12;\n\x16\x41 successful response.\x12!\n\x1f\x1a\x1d.ownmfa.api.CreateKeyResponse\x82\xd3\xe4\x93\x02\x18\"\x11/v1/sessions/keys:\x03key\x12\x87\x01\n\tDeleteKey\x12\x1c.ownmfa.api.DeleteKeyRequest\x1a\x16.google.protobuf.Empty\"D\x92\x41#J!\n\x03\x32\x30\x34\x12\x1a\n\x16\x41 successful response.\x12\x00\x82\xd3\xe4\x93\x02\x18*\x16/v1/sessions/keys/{id}\x12`\n\x08ListKeys\x12\x1b.ownmfa.api.ListKeysRequest\x1a\x1c.ownmfa.api.ListKeysResponse\"\x19\x82\xd3\xe4\x93\x02\x13\x12\x11/v1/sessions/keysB Z\x1egithub.com/ownmfa/proto/go/apib\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'api.ownmfa_session_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'Z\036github.com/ownmfa/proto/go/api'
  _globals['_LOGINREQUEST'].fields_by_name['email']._options = None
  _globals['_LOGINREQUEST'].fields_by_name['email']._serialized_options = b'\340A\002'
  _globals['_LOGINREQUEST'].fields_by_name['org_name']._options = None
  _globals['_LOGINREQUEST'].fields_by_name['org_name']._serialized_options = b'\340A\002'
  _globals['_LOGINREQUEST'].fields_by_name['password']._options = None
  _globals['_LOGINREQUEST'].fields_by_name['password']._serialized_options = b'\340A\002'
  _globals['_KEY'].fields_by_name['id']._options = None
  _globals['_KEY'].fields_by_name['id']._serialized_options = b'\340A\003'
  _globals['_KEY'].fields_by_name['org_id']._options = None
  _globals['_KEY'].fields_by_name['org_id']._serialized_options = b'\340A\003'
  _globals['_KEY'].fields_by_name['name']._options = None
  _globals['_KEY'].fields_by_name['name']._serialized_options = b'\340A\002\372B\006r\004\020\005\030P'
  _globals['_KEY'].fields_by_name['role']._options = None
  _globals['_KEY'].fields_by_name['role']._serialized_options = b'\340A\002\372B\013\202\001\010\030\004\030\010\030\014\030\017'
  _globals['_KEY'].fields_by_name['created_at']._options = None
  _globals['_KEY'].fields_by_name['created_at']._serialized_options = b'\340A\003'
  _globals['_CREATEKEYREQUEST'].fields_by_name['key']._options = None
  _globals['_CREATEKEYREQUEST'].fields_by_name['key']._serialized_options = b'\340A\002\372B\005\212\001\002\020\001'
  _globals['_DELETEKEYREQUEST'].fields_by_name['id']._options = None
  _globals['_DELETEKEYREQUEST'].fields_by_name['id']._serialized_options = b'\340A\002\372B\005r\003\260\001\001'
  _globals['_LISTKEYSREQUEST'].fields_by_name['page_size']._options = None
  _globals['_LISTKEYSREQUEST'].fields_by_name['page_size']._serialized_options = b'\372B\005\032\003\030\372\001'
  _globals['_SESSIONSERVICE'].methods_by_name['Login']._options = None
  _globals['_SESSIONSERVICE'].methods_by_name['Login']._serialized_options = b'\222A\002b\000\202\323\344\223\002\027\"\022/v1/sessions/login:\001*'
  _globals['_SESSIONSERVICE'].methods_by_name['CreateKey']._options = None
  _globals['_SESSIONSERVICE'].methods_by_name['CreateKey']._serialized_options = b'\222ADJB\n\003201\022;\n\026A successful response.\022!\n\037\032\035.ownmfa.api.CreateKeyResponse\202\323\344\223\002\030\"\021/v1/sessions/keys:\003key'
  _globals['_SESSIONSERVICE'].methods_by_name['DeleteKey']._options = None
  _globals['_SESSIONSERVICE'].methods_by_name['DeleteKey']._serialized_options = b'\222A#J!\n\003204\022\032\n\026A successful response.\022\000\202\323\344\223\002\030*\026/v1/sessions/keys/{id}'
  _globals['_SESSIONSERVICE'].methods_by_name['ListKeys']._options = None
  _globals['_SESSIONSERVICE'].methods_by_name['ListKeys']._serialized_options = b'\202\323\344\223\002\023\022\021/v1/sessions/keys'
  _globals['_LOGINREQUEST']._serialized_start=261
  _globals['_LOGINREQUEST']._serialized_end=341
  _globals['_LOGINRESPONSE']._serialized_start=343
  _globals['_LOGINRESPONSE']._serialized_end=421
  _globals['_KEY']._serialized_start=424
  _globals['_KEY']._serialized_end=606
  _globals['_CREATEKEYREQUEST']._serialized_start=608
  _globals['_CREATEKEYREQUEST']._serialized_end=669
  _globals['_CREATEKEYRESPONSE']._serialized_start=671
  _globals['_CREATEKEYRESPONSE']._serialized_end=735
  _globals['_DELETEKEYREQUEST']._serialized_start=737
  _globals['_DELETEKEYREQUEST']._serialized_end=780
  _globals['_LISTKEYSREQUEST']._serialized_start=782
  _globals['_LISTKEYSREQUEST']._serialized_end=848
  _globals['_LISTKEYSRESPONSE']._serialized_start=850
  _globals['_LISTKEYSRESPONSE']._serialized_end=944
  _globals['_SESSIONSERVICE']._serialized_start=947
  _globals['_SESSIONSERVICE']._serialized_end=1475
# @@protoc_insertion_point(module_scope)
