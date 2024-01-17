// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: api/ownmfa_role.proto

#include "api/ownmfa_role.pb.h"

#include <algorithm>
#include "google/protobuf/io/coded_stream.h"
#include "google/protobuf/extension_set.h"
#include "google/protobuf/wire_format_lite.h"
#include "google/protobuf/descriptor.h"
#include "google/protobuf/generated_message_reflection.h"
#include "google/protobuf/reflection_ops.h"
#include "google/protobuf/wire_format.h"
#include "google/protobuf/generated_message_tctable_impl.h"
// @@protoc_insertion_point(includes)

// Must be included last.
#include "google/protobuf/port_def.inc"
PROTOBUF_PRAGMA_INIT_SEG
namespace _pb = ::google::protobuf;
namespace _pbi = ::google::protobuf::internal;
namespace _fl = ::google::protobuf::internal::field_layout;
namespace ownmfa {
namespace api {
}  // namespace api
}  // namespace ownmfa
static const ::_pb::EnumDescriptor* file_level_enum_descriptors_api_2fownmfa_5frole_2eproto[1];
static constexpr const ::_pb::ServiceDescriptor**
    file_level_service_descriptors_api_2fownmfa_5frole_2eproto = nullptr;
const ::uint32_t TableStruct_api_2fownmfa_5frole_2eproto::offsets[1] = {};
static constexpr ::_pbi::MigrationSchema* schemas = nullptr;
static constexpr ::_pb::Message* const* file_default_instances = nullptr;
const char descriptor_table_protodef_api_2fownmfa_5frole_2eproto[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
    "\n\025api/ownmfa_role.proto\022\nownmfa.api*U\n\004R"
    "ole\022\024\n\020ROLE_UNSPECIFIED\020\000\022\n\n\006VIEWER\020\004\022\021\n"
    "\rAUTHENTICATOR\020\010\022\t\n\005ADMIN\020\014\022\r\n\tSYS_ADMIN"
    "\020\017B Z\036github.com/ownmfa/proto/go/apib\006pr"
    "oto3"
};
static ::absl::once_flag descriptor_table_api_2fownmfa_5frole_2eproto_once;
const ::_pbi::DescriptorTable descriptor_table_api_2fownmfa_5frole_2eproto = {
    false,
    false,
    164,
    descriptor_table_protodef_api_2fownmfa_5frole_2eproto,
    "api/ownmfa_role.proto",
    &descriptor_table_api_2fownmfa_5frole_2eproto_once,
    nullptr,
    0,
    0,
    schemas,
    file_default_instances,
    TableStruct_api_2fownmfa_5frole_2eproto::offsets,
    nullptr,
    file_level_enum_descriptors_api_2fownmfa_5frole_2eproto,
    file_level_service_descriptors_api_2fownmfa_5frole_2eproto,
};

// This function exists to be marked as weak.
// It can significantly speed up compilation by breaking up LLVM's SCC
// in the .pb.cc translation units. Large translation units see a
// reduction of more than 35% of walltime for optimized builds. Without
// the weak attribute all the messages in the file, including all the
// vtables and everything they use become part of the same SCC through
// a cycle like:
// GetMetadata -> descriptor table -> default instances ->
//   vtables -> GetMetadata
// By adding a weak function here we break the connection from the
// individual vtables back into the descriptor table.
PROTOBUF_ATTRIBUTE_WEAK const ::_pbi::DescriptorTable* descriptor_table_api_2fownmfa_5frole_2eproto_getter() {
  return &descriptor_table_api_2fownmfa_5frole_2eproto;
}
// Force running AddDescriptors() at dynamic initialization time.
PROTOBUF_ATTRIBUTE_INIT_PRIORITY2
static ::_pbi::AddDescriptorsRunner dynamic_init_dummy_api_2fownmfa_5frole_2eproto(&descriptor_table_api_2fownmfa_5frole_2eproto);
namespace ownmfa {
namespace api {
const ::google::protobuf::EnumDescriptor* Role_descriptor() {
  ::google::protobuf::internal::AssignDescriptors(&descriptor_table_api_2fownmfa_5frole_2eproto);
  return file_level_enum_descriptors_api_2fownmfa_5frole_2eproto[0];
}
bool Role_IsValid(int value) {
  switch (value) {
    case 0:
    case 4:
    case 8:
    case 12:
    case 15:
      return true;
    default:
      return false;
  }
}
// @@protoc_insertion_point(namespace_scope)
}  // namespace api
}  // namespace ownmfa
namespace google {
namespace protobuf {
}  // namespace protobuf
}  // namespace google
// @@protoc_insertion_point(global_scope)
#include "google/protobuf/port_undef.inc"