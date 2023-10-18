# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_org.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from api import ownmfa_status_pb2 as api_dot_ownmfa__status__pb2
from google.protobuf import empty_pb2 as google_dot_protobuf_dot_empty__pb2
from google.protobuf import timestamp_pb2 as google_dot_protobuf_dot_timestamp__pb2
from google.protobuf import field_mask_pb2 as google_dot_protobuf_dot_field__mask__pb2
from google.api import annotations_pb2 as google_dot_api_dot_annotations__pb2
from google.api import field_behavior_pb2 as google_dot_api_dot_field__behavior__pb2
from protoc_gen_openapiv2.options import annotations_pb2 as protoc__gen__openapiv2_dot_options_dot_annotations__pb2
from validate import validate_pb2 as validate_dot_validate__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x14\x61pi/ownmfa_org.proto\x12\nownmfa.api\x1a\x17\x61pi/ownmfa_status.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a google/protobuf/field_mask.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a.protoc-gen-openapiv2/options/annotations.proto\x1a\x17validate/validate.proto\"\xf2\x01\n\x03Org\x12\x10\n\x02id\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x17\n\x04name\x18\x02 \x01(\tB\t\xfa\x42\x06r\x04\x10\x05\x18(\x12.\n\x06status\x18\x05 \x01(\x0e\x32\x12.ownmfa.api.StatusB\n\xfa\x42\x07\x82\x01\x04\x18\x03\x18\x06\x12$\n\x04plan\x18\x06 \x01(\x0e\x32\x10.ownmfa.api.PlanB\x04\xe2\x41\x01\x03\x12\x34\n\ncreated_at\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x34\n\nupdated_at\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\">\n\x10\x43reateOrgRequest\x12*\n\x03org\x18\x01 \x01(\x0b\x32\x0f.ownmfa.api.OrgB\x0c\xe2\x41\x01\x02\xfa\x42\x05\x8a\x01\x02\x10\x01\")\n\rGetOrgRequest\x12\x18\n\x02id\x18\x01 \x01(\tB\x0c\xe2\x41\x01\x02\xfa\x42\x05r\x03\xb0\x01\x01\"o\n\x10UpdateOrgRequest\x12*\n\x03org\x18\x01 \x01(\x0b\x32\x0f.ownmfa.api.OrgB\x0c\xe2\x41\x01\x02\xfa\x42\x05\x8a\x01\x02\x10\x01\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\",\n\x10\x44\x65leteOrgRequest\x12\x18\n\x02id\x18\x01 \x01(\tB\x0c\xe2\x41\x01\x02\xfa\x42\x05r\x03\xb0\x01\x01\"B\n\x0fListOrgsRequest\x12\x1b\n\tpage_size\x18\x01 \x01(\x05\x42\x08\xfa\x42\x05\x1a\x03\x18\xfa\x01\x12\x12\n\npage_token\x18\x02 \x01(\t\"^\n\x10ListOrgsResponse\x12\x1d\n\x04orgs\x18\x01 \x03(\x0b\x32\x0f.ownmfa.api.Org\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x03 \x01(\x05*T\n\x04Plan\x12\x14\n\x10PLAN_UNSPECIFIED\x10\x00\x12\x10\n\x0cPAYMENT_FAIL\x10\x03\x12\x0b\n\x07STARTER\x10\x06\x12\x07\n\x03PRO\x10\t\x12\x0e\n\nENTERPRISE\x10\x0c\x32\xed\x04\n\nOrgService\x12\x93\x01\n\tCreateOrg\x12\x1c.ownmfa.api.CreateOrgRequest\x1a\x0f.ownmfa.api.Org\"W\x92\x41\x36J4\n\x03\x32\x30\x31\x12-\n\x16\x41 successful response.\x12\x13\n\x11\x1a\x0f.ownmfa.api.Org\x82\xd3\xe4\x93\x02\x18\"\x11/v1/organizations:\x03org\x12T\n\x06GetOrg\x12\x19.ownmfa.api.GetOrgRequest\x1a\x0f.ownmfa.api.Org\"\x1e\x82\xd3\xe4\x93\x02\x18\x12\x16/v1/organizations/{id}\x12\x86\x01\n\tUpdateOrg\x12\x1c.ownmfa.api.UpdateOrgRequest\x1a\x0f.ownmfa.api.Org\"J\x82\xd3\xe4\x93\x02\x44\x1a\x1a/v1/organizations/{org.id}:\x03orgZ!2\x1a/v1/organizations/{org.id}:\x03org\x12\x87\x01\n\tDeleteOrg\x12\x1c.ownmfa.api.DeleteOrgRequest\x1a\x16.google.protobuf.Empty\"D\x92\x41#J!\n\x03\x32\x30\x34\x12\x1a\n\x16\x41 successful response.\x12\x00\x82\xd3\xe4\x93\x02\x18*\x16/v1/organizations/{id}\x12`\n\x08ListOrgs\x12\x1b.ownmfa.api.ListOrgsRequest\x1a\x1c.ownmfa.api.ListOrgsResponse\"\x19\x82\xd3\xe4\x93\x02\x13\x12\x11/v1/organizationsB\x1eZ\x1cgithub.com/ownmfa/api/go/apib\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'api.ownmfa_org_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  DESCRIPTOR._options = None
  DESCRIPTOR._serialized_options = b'Z\034github.com/ownmfa/api/go/api'
  _ORG.fields_by_name['id']._options = None
  _ORG.fields_by_name['id']._serialized_options = b'\342A\001\003'
  _ORG.fields_by_name['name']._options = None
  _ORG.fields_by_name['name']._serialized_options = b'\372B\006r\004\020\005\030('
  _ORG.fields_by_name['status']._options = None
  _ORG.fields_by_name['status']._serialized_options = b'\372B\007\202\001\004\030\003\030\006'
  _ORG.fields_by_name['plan']._options = None
  _ORG.fields_by_name['plan']._serialized_options = b'\342A\001\003'
  _ORG.fields_by_name['created_at']._options = None
  _ORG.fields_by_name['created_at']._serialized_options = b'\342A\001\003'
  _ORG.fields_by_name['updated_at']._options = None
  _ORG.fields_by_name['updated_at']._serialized_options = b'\342A\001\003'
  _CREATEORGREQUEST.fields_by_name['org']._options = None
  _CREATEORGREQUEST.fields_by_name['org']._serialized_options = b'\342A\001\002\372B\005\212\001\002\020\001'
  _GETORGREQUEST.fields_by_name['id']._options = None
  _GETORGREQUEST.fields_by_name['id']._serialized_options = b'\342A\001\002\372B\005r\003\260\001\001'
  _UPDATEORGREQUEST.fields_by_name['org']._options = None
  _UPDATEORGREQUEST.fields_by_name['org']._serialized_options = b'\342A\001\002\372B\005\212\001\002\020\001'
  _DELETEORGREQUEST.fields_by_name['id']._options = None
  _DELETEORGREQUEST.fields_by_name['id']._serialized_options = b'\342A\001\002\372B\005r\003\260\001\001'
  _LISTORGSREQUEST.fields_by_name['page_size']._options = None
  _LISTORGSREQUEST.fields_by_name['page_size']._serialized_options = b'\372B\005\032\003\030\372\001'
  _ORGSERVICE.methods_by_name['CreateOrg']._options = None
  _ORGSERVICE.methods_by_name['CreateOrg']._serialized_options = b'\222A6J4\n\003201\022-\n\026A successful response.\022\023\n\021\032\017.ownmfa.api.Org\202\323\344\223\002\030\"\021/v1/organizations:\003org'
  _ORGSERVICE.methods_by_name['GetOrg']._options = None
  _ORGSERVICE.methods_by_name['GetOrg']._serialized_options = b'\202\323\344\223\002\030\022\026/v1/organizations/{id}'
  _ORGSERVICE.methods_by_name['UpdateOrg']._options = None
  _ORGSERVICE.methods_by_name['UpdateOrg']._serialized_options = b'\202\323\344\223\002D\032\032/v1/organizations/{org.id}:\003orgZ!2\032/v1/organizations/{org.id}:\003org'
  _ORGSERVICE.methods_by_name['DeleteOrg']._options = None
  _ORGSERVICE.methods_by_name['DeleteOrg']._serialized_options = b'\222A#J!\n\003204\022\032\n\026A successful response.\022\000\202\323\344\223\002\030*\026/v1/organizations/{id}'
  _ORGSERVICE.methods_by_name['ListOrgs']._options = None
  _ORGSERVICE.methods_by_name['ListOrgs']._serialized_options = b'\202\323\344\223\002\023\022\021/v1/organizations'
  _globals['_PLAN']._serialized_start=968
  _globals['_PLAN']._serialized_end=1052
  _globals['_ORG']._serialized_start=294
  _globals['_ORG']._serialized_end=536
  _globals['_CREATEORGREQUEST']._serialized_start=538
  _globals['_CREATEORGREQUEST']._serialized_end=600
  _globals['_GETORGREQUEST']._serialized_start=602
  _globals['_GETORGREQUEST']._serialized_end=643
  _globals['_UPDATEORGREQUEST']._serialized_start=645
  _globals['_UPDATEORGREQUEST']._serialized_end=756
  _globals['_DELETEORGREQUEST']._serialized_start=758
  _globals['_DELETEORGREQUEST']._serialized_end=802
  _globals['_LISTORGSREQUEST']._serialized_start=804
  _globals['_LISTORGSREQUEST']._serialized_end=870
  _globals['_LISTORGSRESPONSE']._serialized_start=872
  _globals['_LISTORGSRESPONSE']._serialized_end=966
  _globals['_ORGSERVICE']._serialized_start=1055
  _globals['_ORGSERVICE']._serialized_end=1676
# @@protoc_insertion_point(module_scope)
