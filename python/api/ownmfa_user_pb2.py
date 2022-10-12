# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_user.proto
"""Generated protocol buffer code."""
from google.protobuf.internal import builder as _builder
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from api import ownmfa_role_pb2 as api_dot_ownmfa__role__pb2
from api import ownmfa_status_pb2 as api_dot_ownmfa__status__pb2
from google.protobuf import empty_pb2 as google_dot_protobuf_dot_empty__pb2
from google.protobuf import timestamp_pb2 as google_dot_protobuf_dot_timestamp__pb2
from google.protobuf import field_mask_pb2 as google_dot_protobuf_dot_field__mask__pb2
from google.api import annotations_pb2 as google_dot_api_dot_annotations__pb2
from google.api import field_behavior_pb2 as google_dot_api_dot_field__behavior__pb2
from protoc_gen_openapiv2.options import annotations_pb2 as protoc__gen__openapiv2_dot_options_dot_annotations__pb2
from validate import validate_pb2 as validate_dot_validate__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x15\x61pi/ownmfa_user.proto\x12\nownmfa.api\x1a\x15\x61pi/ownmfa_role.proto\x1a\x17\x61pi/ownmfa_status.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a google/protobuf/field_mask.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a.protoc-gen-openapiv2/options/annotations.proto\x1a\x17validate/validate.proto\"\xae\x02\n\x04User\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\x06org_id\x18\x02 \x01(\tB\x03\xe0\x41\x03R\x05orgID\x12\x17\n\x04name\x18\x03 \x01(\tB\t\xfa\x42\x06r\x04\x10\x05\x18P\x12\x16\n\x05\x65mail\x18\x04 \x01(\tB\x07\xfa\x42\x04r\x02`\x01\x12.\n\x04role\x18\x05 \x01(\x0e\x32\x10.ownmfa.api.RoleB\x0e\xfa\x42\x0b\x82\x01\x08\x18\x04\x18\x08\x18\x0c\x18\x0f\x12.\n\x06status\x18\x06 \x01(\x0e\x32\x12.ownmfa.api.StatusB\n\xfa\x42\x07\x82\x01\x04\x18\x03\x18\x06\x12\x33\n\ncreated_at\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x33\n\nupdated_at\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"@\n\x11\x43reateUserRequest\x12+\n\x04user\x18\x01 \x01(\x0b\x32\x10.ownmfa.api.UserB\x0b\xfa\x42\x05\x8a\x01\x02\x10\x01\xe0\x41\x02\")\n\x0eGetUserRequest\x12\x17\n\x02id\x18\x01 \x01(\tB\x0b\xfa\x42\x05r\x03\xb0\x01\x01\xe0\x41\x02\"q\n\x11UpdateUserRequest\x12+\n\x04user\x18\x01 \x01(\x0b\x32\x10.ownmfa.api.UserB\x0b\xfa\x42\x05\x8a\x01\x02\x10\x01\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"T\n\x19UpdateUserPasswordRequest\x12\x17\n\x02id\x18\x01 \x01(\tB\x0b\xfa\x42\x05r\x03\xb0\x01\x01\xe0\x41\x03\x12\x1e\n\x08password\x18\x02 \x01(\tB\x0c\xfa\x42\x06r\x04\x10\n\x18\x64\xe0\x41\x02\",\n\x11\x44\x65leteUserRequest\x12\x17\n\x02id\x18\x01 \x01(\tB\x0b\xfa\x42\x05r\x03\xb0\x01\x01\xe0\x41\x02\"C\n\x10ListUsersRequest\x12\x1b\n\tpage_size\x18\x01 \x01(\x05\x42\x08\xfa\x42\x05\x1a\x03\x18\xfa\x01\x12\x12\n\npage_token\x18\x02 \x01(\t\"a\n\x11ListUsersResponse\x12\x1f\n\x05users\x18\x01 \x03(\x0b\x32\x10.ownmfa.api.User\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x03 \x01(\x05\x32\xca\x05\n\x0bUserService\x12\x90\x01\n\nCreateUser\x12\x1d.ownmfa.api.CreateUserRequest\x1a\x10.ownmfa.api.User\"Q\x82\xd3\xe4\x93\x02\x11\"\t/v1/users:\x04user\x92\x41\x37J5\n\x03\x32\x30\x31\x12.\n\x16\x41 successful response.\x12\x14\n\x12\x1a\x10.ownmfa.api.User\x12O\n\x07GetUser\x12\x1a.ownmfa.api.GetUserRequest\x1a\x10.ownmfa.api.User\"\x16\x82\xd3\xe4\x93\x02\x10\x12\x0e/v1/users/{id}\x12}\n\nUpdateUser\x12\x1d.ownmfa.api.UpdateUserRequest\x1a\x10.ownmfa.api.User\">\x82\xd3\xe4\x93\x02\x38\x1a\x13/v1/users/{user.id}:\x04userZ\x1b\x32\x13/v1/users/{user.id}:\x04user\x12w\n\x12UpdateUserPassword\x12%.ownmfa.api.UpdateUserPasswordRequest\x1a\x16.google.protobuf.Empty\"\"\x82\xd3\xe4\x93\x02\x1c\x1a\x17/v1/users/{id}/password:\x01*\x12\x81\x01\n\nDeleteUser\x12\x1d.ownmfa.api.DeleteUserRequest\x1a\x16.google.protobuf.Empty\"<\x82\xd3\xe4\x93\x02\x10*\x0e/v1/users/{id}\x92\x41#J!\n\x03\x32\x30\x34\x12\x1a\n\x16\x41 successful response.\x12\x00\x12[\n\tListUsers\x12\x1c.ownmfa.api.ListUsersRequest\x1a\x1d.ownmfa.api.ListUsersResponse\"\x11\x82\xd3\xe4\x93\x02\x0b\x12\t/v1/usersB\x1eZ\x1cgithub.com/ownmfa/api/go/apib\x06proto3')

_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, globals())
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'api.ownmfa_user_pb2', globals())
if _descriptor._USE_C_DESCRIPTORS == False:

  DESCRIPTOR._options = None
  DESCRIPTOR._serialized_options = b'Z\034github.com/ownmfa/api/go/api'
  _USER.fields_by_name['id']._options = None
  _USER.fields_by_name['id']._serialized_options = b'\340A\003'
  _USER.fields_by_name['org_id']._options = None
  _USER.fields_by_name['org_id']._serialized_options = b'\340A\003'
  _USER.fields_by_name['name']._options = None
  _USER.fields_by_name['name']._serialized_options = b'\372B\006r\004\020\005\030P'
  _USER.fields_by_name['email']._options = None
  _USER.fields_by_name['email']._serialized_options = b'\372B\004r\002`\001'
  _USER.fields_by_name['role']._options = None
  _USER.fields_by_name['role']._serialized_options = b'\372B\013\202\001\010\030\004\030\010\030\014\030\017'
  _USER.fields_by_name['status']._options = None
  _USER.fields_by_name['status']._serialized_options = b'\372B\007\202\001\004\030\003\030\006'
  _USER.fields_by_name['created_at']._options = None
  _USER.fields_by_name['created_at']._serialized_options = b'\340A\003'
  _USER.fields_by_name['updated_at']._options = None
  _USER.fields_by_name['updated_at']._serialized_options = b'\340A\003'
  _CREATEUSERREQUEST.fields_by_name['user']._options = None
  _CREATEUSERREQUEST.fields_by_name['user']._serialized_options = b'\372B\005\212\001\002\020\001\340A\002'
  _GETUSERREQUEST.fields_by_name['id']._options = None
  _GETUSERREQUEST.fields_by_name['id']._serialized_options = b'\372B\005r\003\260\001\001\340A\002'
  _UPDATEUSERREQUEST.fields_by_name['user']._options = None
  _UPDATEUSERREQUEST.fields_by_name['user']._serialized_options = b'\372B\005\212\001\002\020\001\340A\002'
  _UPDATEUSERPASSWORDREQUEST.fields_by_name['id']._options = None
  _UPDATEUSERPASSWORDREQUEST.fields_by_name['id']._serialized_options = b'\372B\005r\003\260\001\001\340A\003'
  _UPDATEUSERPASSWORDREQUEST.fields_by_name['password']._options = None
  _UPDATEUSERPASSWORDREQUEST.fields_by_name['password']._serialized_options = b'\372B\006r\004\020\n\030d\340A\002'
  _DELETEUSERREQUEST.fields_by_name['id']._options = None
  _DELETEUSERREQUEST.fields_by_name['id']._serialized_options = b'\372B\005r\003\260\001\001\340A\002'
  _LISTUSERSREQUEST.fields_by_name['page_size']._options = None
  _LISTUSERSREQUEST.fields_by_name['page_size']._serialized_options = b'\372B\005\032\003\030\372\001'
  _USERSERVICE.methods_by_name['CreateUser']._options = None
  _USERSERVICE.methods_by_name['CreateUser']._serialized_options = b'\202\323\344\223\002\021\"\t/v1/users:\004user\222A7J5\n\003201\022.\n\026A successful response.\022\024\n\022\032\020.ownmfa.api.User'
  _USERSERVICE.methods_by_name['GetUser']._options = None
  _USERSERVICE.methods_by_name['GetUser']._serialized_options = b'\202\323\344\223\002\020\022\016/v1/users/{id}'
  _USERSERVICE.methods_by_name['UpdateUser']._options = None
  _USERSERVICE.methods_by_name['UpdateUser']._serialized_options = b'\202\323\344\223\0028\032\023/v1/users/{user.id}:\004userZ\0332\023/v1/users/{user.id}:\004user'
  _USERSERVICE.methods_by_name['UpdateUserPassword']._options = None
  _USERSERVICE.methods_by_name['UpdateUserPassword']._serialized_options = b'\202\323\344\223\002\034\032\027/v1/users/{id}/password:\001*'
  _USERSERVICE.methods_by_name['DeleteUser']._options = None
  _USERSERVICE.methods_by_name['DeleteUser']._serialized_options = b'\202\323\344\223\002\020*\016/v1/users/{id}\222A#J!\n\003204\022\032\n\026A successful response.\022\000'
  _USERSERVICE.methods_by_name['ListUsers']._options = None
  _USERSERVICE.methods_by_name['ListUsers']._serialized_options = b'\202\323\344\223\002\013\022\t/v1/users'
  _USER._serialized_start=318
  _USER._serialized_end=620
  _CREATEUSERREQUEST._serialized_start=622
  _CREATEUSERREQUEST._serialized_end=686
  _GETUSERREQUEST._serialized_start=688
  _GETUSERREQUEST._serialized_end=729
  _UPDATEUSERREQUEST._serialized_start=731
  _UPDATEUSERREQUEST._serialized_end=844
  _UPDATEUSERPASSWORDREQUEST._serialized_start=846
  _UPDATEUSERPASSWORDREQUEST._serialized_end=930
  _DELETEUSERREQUEST._serialized_start=932
  _DELETEUSERREQUEST._serialized_end=976
  _LISTUSERSREQUEST._serialized_start=978
  _LISTUSERSREQUEST._serialized_end=1045
  _LISTUSERSRESPONSE._serialized_start=1047
  _LISTUSERSRESPONSE._serialized_end=1144
  _USERSERVICE._serialized_start=1147
  _USERSERVICE._serialized_end=1861
# @@protoc_insertion_point(module_scope)