// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.36.2
// 	protoc        v4.24.4
// source: api/ownmfa_org.proto

package api

import (
	_ "github.com/envoyproxy/protoc-gen-validate/validate"
	_ "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2/options"
	_ "google.golang.org/genproto/googleapis/api/annotations"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
	fieldmaskpb "google.golang.org/protobuf/types/known/fieldmaskpb"
	timestamppb "google.golang.org/protobuf/types/known/timestamppb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// Plan represents the plan and associated capabilities of an organization.
type Plan int32

const (
	// Plan is not specified.
	Plan_PLAN_UNSPECIFIED Plan = 0
	// Payment has failed and the organization is restricted to Starter plan capabilities.
	Plan_PAYMENT_FAIL Plan = 3
	// Starter plan supports software and hardware OATH one-time password authentication methods, up to a limited number of identities.
	Plan_STARTER Plan = 6
	// Pro plan supports all authentication methods and includes email support.
	Plan_PRO Plan = 9
	// Enterprise plan supports all authentication methods and includes email and phone support.
	Plan_ENTERPRISE Plan = 12
)

// Enum value maps for Plan.
var (
	Plan_name = map[int32]string{
		0:  "PLAN_UNSPECIFIED",
		3:  "PAYMENT_FAIL",
		6:  "STARTER",
		9:  "PRO",
		12: "ENTERPRISE",
	}
	Plan_value = map[string]int32{
		"PLAN_UNSPECIFIED": 0,
		"PAYMENT_FAIL":     3,
		"STARTER":          6,
		"PRO":              9,
		"ENTERPRISE":       12,
	}
)

func (x Plan) Enum() *Plan {
	p := new(Plan)
	*p = x
	return p
}

func (x Plan) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (Plan) Descriptor() protoreflect.EnumDescriptor {
	return file_api_ownmfa_org_proto_enumTypes[0].Descriptor()
}

func (Plan) Type() protoreflect.EnumType {
	return &file_api_ownmfa_org_proto_enumTypes[0]
}

func (x Plan) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use Plan.Descriptor instead.
func (Plan) EnumDescriptor() ([]byte, []int) {
	return file_api_ownmfa_org_proto_rawDescGZIP(), []int{0}
}

// Org represents an organization as stored in the database.
type Org struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Organization ID (UUID).
	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	// Organization name.
	Name string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	// Organization status.
	Status Status `protobuf:"varint,5,opt,name=status,proto3,enum=ownmfa.api.Status" json:"status,omitempty"`
	// Organization plan.
	Plan Plan `protobuf:"varint,6,opt,name=plan,proto3,enum=ownmfa.api.Plan" json:"plan,omitempty"`
	// Organization creation timestamp.
	CreatedAt *timestamppb.Timestamp `protobuf:"bytes,3,opt,name=created_at,json=createdAt,proto3" json:"created_at,omitempty"`
	// Organization modification timestamp.
	UpdatedAt     *timestamppb.Timestamp `protobuf:"bytes,4,opt,name=updated_at,json=updatedAt,proto3" json:"updated_at,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *Org) Reset() {
	*x = Org{}
	mi := &file_api_ownmfa_org_proto_msgTypes[0]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *Org) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Org) ProtoMessage() {}

func (x *Org) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_org_proto_msgTypes[0]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Org.ProtoReflect.Descriptor instead.
func (*Org) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_org_proto_rawDescGZIP(), []int{0}
}

func (x *Org) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *Org) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *Org) GetStatus() Status {
	if x != nil {
		return x.Status
	}
	return Status_STATUS_UNSPECIFIED
}

func (x *Org) GetPlan() Plan {
	if x != nil {
		return x.Plan
	}
	return Plan_PLAN_UNSPECIFIED
}

func (x *Org) GetCreatedAt() *timestamppb.Timestamp {
	if x != nil {
		return x.CreatedAt
	}
	return nil
}

func (x *Org) GetUpdatedAt() *timestamppb.Timestamp {
	if x != nil {
		return x.UpdatedAt
	}
	return nil
}

// CreateOrgRequest is sent to create an organization.
type CreateOrgRequest struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Org message to create.
	Org           *Org `protobuf:"bytes,1,opt,name=org,proto3" json:"org,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *CreateOrgRequest) Reset() {
	*x = CreateOrgRequest{}
	mi := &file_api_ownmfa_org_proto_msgTypes[1]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *CreateOrgRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateOrgRequest) ProtoMessage() {}

func (x *CreateOrgRequest) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_org_proto_msgTypes[1]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateOrgRequest.ProtoReflect.Descriptor instead.
func (*CreateOrgRequest) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_org_proto_rawDescGZIP(), []int{1}
}

func (x *CreateOrgRequest) GetOrg() *Org {
	if x != nil {
		return x.Org
	}
	return nil
}

// GetOrgRequest is sent to get an organization.
type GetOrgRequest struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Organization ID (UUID) to get.
	Id            string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *GetOrgRequest) Reset() {
	*x = GetOrgRequest{}
	mi := &file_api_ownmfa_org_proto_msgTypes[2]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *GetOrgRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetOrgRequest) ProtoMessage() {}

func (x *GetOrgRequest) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_org_proto_msgTypes[2]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetOrgRequest.ProtoReflect.Descriptor instead.
func (*GetOrgRequest) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_org_proto_rawDescGZIP(), []int{2}
}

func (x *GetOrgRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

// UpdateOrgRequest is sent to update an organization.
type UpdateOrgRequest struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Org message to update.
	Org *Org `protobuf:"bytes,1,opt,name=org,proto3" json:"org,omitempty"`
	// Fields to update. Automatically populated by a PATCH request. If not present, a full resource update is performed.
	UpdateMask    *fieldmaskpb.FieldMask `protobuf:"bytes,2,opt,name=update_mask,json=updateMask,proto3" json:"update_mask,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *UpdateOrgRequest) Reset() {
	*x = UpdateOrgRequest{}
	mi := &file_api_ownmfa_org_proto_msgTypes[3]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *UpdateOrgRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UpdateOrgRequest) ProtoMessage() {}

func (x *UpdateOrgRequest) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_org_proto_msgTypes[3]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UpdateOrgRequest.ProtoReflect.Descriptor instead.
func (*UpdateOrgRequest) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_org_proto_rawDescGZIP(), []int{3}
}

func (x *UpdateOrgRequest) GetOrg() *Org {
	if x != nil {
		return x.Org
	}
	return nil
}

func (x *UpdateOrgRequest) GetUpdateMask() *fieldmaskpb.FieldMask {
	if x != nil {
		return x.UpdateMask
	}
	return nil
}

// DeleteOrgRequest is sent to delete an organization.
type DeleteOrgRequest struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Organization ID (UUID) to delete.
	Id            string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *DeleteOrgRequest) Reset() {
	*x = DeleteOrgRequest{}
	mi := &file_api_ownmfa_org_proto_msgTypes[4]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *DeleteOrgRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DeleteOrgRequest) ProtoMessage() {}

func (x *DeleteOrgRequest) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_org_proto_msgTypes[4]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DeleteOrgRequest.ProtoReflect.Descriptor instead.
func (*DeleteOrgRequest) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_org_proto_rawDescGZIP(), []int{4}
}

func (x *DeleteOrgRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

// ListOrgsRequest is sent to list organizations.
type ListOrgsRequest struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Number of organizations to retrieve in a single page. Defaults to 50 if not specified, with a maximum of 250.
	PageSize int32 `protobuf:"varint,1,opt,name=page_size,json=pageSize,proto3" json:"page_size,omitempty"`
	// Token of the page to retrieve. If not specified, the first page of results will be returned. To request the next page of results, use next_page_token from the previous response.
	PageToken     string `protobuf:"bytes,2,opt,name=page_token,json=pageToken,proto3" json:"page_token,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *ListOrgsRequest) Reset() {
	*x = ListOrgsRequest{}
	mi := &file_api_ownmfa_org_proto_msgTypes[5]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *ListOrgsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListOrgsRequest) ProtoMessage() {}

func (x *ListOrgsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_org_proto_msgTypes[5]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListOrgsRequest.ProtoReflect.Descriptor instead.
func (*ListOrgsRequest) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_org_proto_rawDescGZIP(), []int{5}
}

func (x *ListOrgsRequest) GetPageSize() int32 {
	if x != nil {
		return x.PageSize
	}
	return 0
}

func (x *ListOrgsRequest) GetPageToken() string {
	if x != nil {
		return x.PageToken
	}
	return ""
}

// ListOrgsResponse is sent in response to an organization list.
type ListOrgsResponse struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Org array, ordered by ascending created_at timestamp.
	Orgs []*Org `protobuf:"bytes,1,rep,name=orgs,proto3" json:"orgs,omitempty"`
	// Pagination token used to retrieve the next page of results. Not returned for the last page.
	NextPageToken string `protobuf:"bytes,2,opt,name=next_page_token,json=nextPageToken,proto3" json:"next_page_token,omitempty"`
	// Total number of organizations available.
	TotalSize     int32 `protobuf:"varint,3,opt,name=total_size,json=totalSize,proto3" json:"total_size,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *ListOrgsResponse) Reset() {
	*x = ListOrgsResponse{}
	mi := &file_api_ownmfa_org_proto_msgTypes[6]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *ListOrgsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListOrgsResponse) ProtoMessage() {}

func (x *ListOrgsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_org_proto_msgTypes[6]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListOrgsResponse.ProtoReflect.Descriptor instead.
func (*ListOrgsResponse) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_org_proto_rawDescGZIP(), []int{6}
}

func (x *ListOrgsResponse) GetOrgs() []*Org {
	if x != nil {
		return x.Orgs
	}
	return nil
}

func (x *ListOrgsResponse) GetNextPageToken() string {
	if x != nil {
		return x.NextPageToken
	}
	return ""
}

func (x *ListOrgsResponse) GetTotalSize() int32 {
	if x != nil {
		return x.TotalSize
	}
	return 0
}

var File_api_ownmfa_org_proto protoreflect.FileDescriptor

var file_api_ownmfa_org_proto_rawDesc = []byte{
	0x0a, 0x14, 0x61, 0x70, 0x69, 0x2f, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x5f, 0x6f, 0x72, 0x67,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x0a, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61,
	0x70, 0x69, 0x1a, 0x17, 0x61, 0x70, 0x69, 0x2f, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x5f, 0x73,
	0x74, 0x61, 0x74, 0x75, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1b, 0x67, 0x6f, 0x6f,
	0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x65, 0x6d, 0x70,
	0x74, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1f, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65,
	0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74,
	0x61, 0x6d, 0x70, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x20, 0x67, 0x6f, 0x6f, 0x67, 0x6c,
	0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x66, 0x69, 0x65, 0x6c, 0x64,
	0x5f, 0x6d, 0x61, 0x73, 0x6b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1c, 0x67, 0x6f, 0x6f,
	0x67, 0x6c, 0x65, 0x2f, 0x61, 0x70, 0x69, 0x2f, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x61, 0x74, 0x69,
	0x6f, 0x6e, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1f, 0x67, 0x6f, 0x6f, 0x67, 0x6c,
	0x65, 0x2f, 0x61, 0x70, 0x69, 0x2f, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x5f, 0x62, 0x65, 0x68, 0x61,
	0x76, 0x69, 0x6f, 0x72, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x63, 0x2d, 0x67, 0x65, 0x6e, 0x2d, 0x6f, 0x70, 0x65, 0x6e, 0x61, 0x70, 0x69, 0x76, 0x32,
	0x2f, 0x6f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x2f, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x61, 0x74,
	0x69, 0x6f, 0x6e, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x17, 0x76, 0x61, 0x6c, 0x69,
	0x64, 0x61, 0x74, 0x65, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x22, 0x9c, 0x02, 0x0a, 0x03, 0x4f, 0x72, 0x67, 0x12, 0x13, 0x0a, 0x02, 0x69,
	0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x42, 0x03, 0xe0, 0x41, 0x03, 0x52, 0x02, 0x69, 0x64,
	0x12, 0x1d, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x42, 0x09,
	0xfa, 0x42, 0x06, 0x72, 0x04, 0x10, 0x05, 0x18, 0x28, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12,
	0x36, 0x0a, 0x06, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x18, 0x05, 0x20, 0x01, 0x28, 0x0e, 0x32,
	0x12, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x53, 0x74, 0x61,
	0x74, 0x75, 0x73, 0x42, 0x0a, 0xfa, 0x42, 0x07, 0x82, 0x01, 0x04, 0x18, 0x03, 0x18, 0x06, 0x52,
	0x06, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x12, 0x29, 0x0a, 0x04, 0x70, 0x6c, 0x61, 0x6e, 0x18,
	0x06, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x10, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61,
	0x70, 0x69, 0x2e, 0x50, 0x6c, 0x61, 0x6e, 0x42, 0x03, 0xe0, 0x41, 0x03, 0x52, 0x04, 0x70, 0x6c,
	0x61, 0x6e, 0x12, 0x3e, 0x0a, 0x0a, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x5f, 0x61, 0x74,
	0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61,
	0x6d, 0x70, 0x42, 0x03, 0xe0, 0x41, 0x03, 0x52, 0x09, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64,
	0x41, 0x74, 0x12, 0x3e, 0x0a, 0x0a, 0x75, 0x70, 0x64, 0x61, 0x74, 0x65, 0x64, 0x5f, 0x61, 0x74,
	0x18, 0x04, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61,
	0x6d, 0x70, 0x42, 0x03, 0xe0, 0x41, 0x03, 0x52, 0x09, 0x75, 0x70, 0x64, 0x61, 0x74, 0x65, 0x64,
	0x41, 0x74, 0x22, 0x42, 0x0a, 0x10, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x52,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x2e, 0x0a, 0x03, 0x6f, 0x72, 0x67, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69,
	0x2e, 0x4f, 0x72, 0x67, 0x42, 0x0b, 0xe0, 0x41, 0x02, 0xfa, 0x42, 0x05, 0x8a, 0x01, 0x02, 0x10,
	0x01, 0x52, 0x03, 0x6f, 0x72, 0x67, 0x22, 0x2c, 0x0a, 0x0d, 0x47, 0x65, 0x74, 0x4f, 0x72, 0x67,
	0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x1b, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x09, 0x42, 0x0b, 0xe0, 0x41, 0x02, 0xfa, 0x42, 0x05, 0x72, 0x03, 0xb0, 0x01, 0x01,
	0x52, 0x02, 0x69, 0x64, 0x22, 0x7f, 0x0a, 0x10, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x4f, 0x72,
	0x67, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x2e, 0x0a, 0x03, 0x6f, 0x72, 0x67, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61,
	0x70, 0x69, 0x2e, 0x4f, 0x72, 0x67, 0x42, 0x0b, 0xe0, 0x41, 0x02, 0xfa, 0x42, 0x05, 0x8a, 0x01,
	0x02, 0x10, 0x01, 0x52, 0x03, 0x6f, 0x72, 0x67, 0x12, 0x3b, 0x0a, 0x0b, 0x75, 0x70, 0x64, 0x61,
	0x74, 0x65, 0x5f, 0x6d, 0x61, 0x73, 0x6b, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e,
	0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e,
	0x46, 0x69, 0x65, 0x6c, 0x64, 0x4d, 0x61, 0x73, 0x6b, 0x52, 0x0a, 0x75, 0x70, 0x64, 0x61, 0x74,
	0x65, 0x4d, 0x61, 0x73, 0x6b, 0x22, 0x2f, 0x0a, 0x10, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x4f,
	0x72, 0x67, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x1b, 0x0a, 0x02, 0x69, 0x64, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x42, 0x0b, 0xe0, 0x41, 0x02, 0xfa, 0x42, 0x05, 0x72, 0x03, 0xb0,
	0x01, 0x01, 0x52, 0x02, 0x69, 0x64, 0x22, 0x57, 0x0a, 0x0f, 0x4c, 0x69, 0x73, 0x74, 0x4f, 0x72,
	0x67, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x25, 0x0a, 0x09, 0x70, 0x61, 0x67,
	0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x42, 0x08, 0xfa, 0x42,
	0x05, 0x1a, 0x03, 0x18, 0xfa, 0x01, 0x52, 0x08, 0x70, 0x61, 0x67, 0x65, 0x53, 0x69, 0x7a, 0x65,
	0x12, 0x1d, 0x0a, 0x0a, 0x70, 0x61, 0x67, 0x65, 0x5f, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x70, 0x61, 0x67, 0x65, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x22,
	0x7e, 0x0a, 0x10, 0x4c, 0x69, 0x73, 0x74, 0x4f, 0x72, 0x67, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f,
	0x6e, 0x73, 0x65, 0x12, 0x23, 0x0a, 0x04, 0x6f, 0x72, 0x67, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28,
	0x0b, 0x32, 0x0f, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4f,
	0x72, 0x67, 0x52, 0x04, 0x6f, 0x72, 0x67, 0x73, 0x12, 0x26, 0x0a, 0x0f, 0x6e, 0x65, 0x78, 0x74,
	0x5f, 0x70, 0x61, 0x67, 0x65, 0x5f, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x0d, 0x6e, 0x65, 0x78, 0x74, 0x50, 0x61, 0x67, 0x65, 0x54, 0x6f, 0x6b, 0x65, 0x6e,
	0x12, 0x1d, 0x0a, 0x0a, 0x74, 0x6f, 0x74, 0x61, 0x6c, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x18, 0x03,
	0x20, 0x01, 0x28, 0x05, 0x52, 0x09, 0x74, 0x6f, 0x74, 0x61, 0x6c, 0x53, 0x69, 0x7a, 0x65, 0x2a,
	0x54, 0x0a, 0x04, 0x50, 0x6c, 0x61, 0x6e, 0x12, 0x14, 0x0a, 0x10, 0x50, 0x4c, 0x41, 0x4e, 0x5f,
	0x55, 0x4e, 0x53, 0x50, 0x45, 0x43, 0x49, 0x46, 0x49, 0x45, 0x44, 0x10, 0x00, 0x12, 0x10, 0x0a,
	0x0c, 0x50, 0x41, 0x59, 0x4d, 0x45, 0x4e, 0x54, 0x5f, 0x46, 0x41, 0x49, 0x4c, 0x10, 0x03, 0x12,
	0x0b, 0x0a, 0x07, 0x53, 0x54, 0x41, 0x52, 0x54, 0x45, 0x52, 0x10, 0x06, 0x12, 0x07, 0x0a, 0x03,
	0x50, 0x52, 0x4f, 0x10, 0x09, 0x12, 0x0e, 0x0a, 0x0a, 0x45, 0x4e, 0x54, 0x45, 0x52, 0x50, 0x52,
	0x49, 0x53, 0x45, 0x10, 0x0c, 0x32, 0xed, 0x04, 0x0a, 0x0a, 0x4f, 0x72, 0x67, 0x53, 0x65, 0x72,
	0x76, 0x69, 0x63, 0x65, 0x12, 0x93, 0x01, 0x0a, 0x09, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f,
	0x72, 0x67, 0x12, 0x1c, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e,
	0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x1a, 0x0f, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4f, 0x72,
	0x67, 0x22, 0x57, 0x92, 0x41, 0x36, 0x4a, 0x34, 0x0a, 0x03, 0x32, 0x30, 0x31, 0x12, 0x2d, 0x0a,
	0x16, 0x41, 0x20, 0x73, 0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x66, 0x75, 0x6c, 0x20, 0x72, 0x65,
	0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x2e, 0x12, 0x13, 0x0a, 0x11, 0x1a, 0x0f, 0x2e, 0x6f, 0x77,
	0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4f, 0x72, 0x67, 0x82, 0xd3, 0xe4, 0x93,
	0x02, 0x18, 0x3a, 0x03, 0x6f, 0x72, 0x67, 0x22, 0x11, 0x2f, 0x76, 0x31, 0x2f, 0x6f, 0x72, 0x67,
	0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x12, 0x54, 0x0a, 0x06, 0x47, 0x65,
	0x74, 0x4f, 0x72, 0x67, 0x12, 0x19, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70,
	0x69, 0x2e, 0x47, 0x65, 0x74, 0x4f, 0x72, 0x67, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a,
	0x0f, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4f, 0x72, 0x67,
	0x22, 0x1e, 0x82, 0xd3, 0xe4, 0x93, 0x02, 0x18, 0x12, 0x16, 0x2f, 0x76, 0x31, 0x2f, 0x6f, 0x72,
	0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x2f, 0x7b, 0x69, 0x64, 0x7d,
	0x12, 0x86, 0x01, 0x0a, 0x09, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x12, 0x1c,
	0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x55, 0x70, 0x64, 0x61,
	0x74, 0x65, 0x4f, 0x72, 0x67, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x0f, 0x2e, 0x6f,
	0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4f, 0x72, 0x67, 0x22, 0x4a, 0x82,
	0xd3, 0xe4, 0x93, 0x02, 0x44, 0x3a, 0x03, 0x6f, 0x72, 0x67, 0x5a, 0x21, 0x3a, 0x03, 0x6f, 0x72,
	0x67, 0x32, 0x1a, 0x2f, 0x76, 0x31, 0x2f, 0x6f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74,
	0x69, 0x6f, 0x6e, 0x73, 0x2f, 0x7b, 0x6f, 0x72, 0x67, 0x2e, 0x69, 0x64, 0x7d, 0x1a, 0x1a, 0x2f,
	0x76, 0x31, 0x2f, 0x6f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x73,
	0x2f, 0x7b, 0x6f, 0x72, 0x67, 0x2e, 0x69, 0x64, 0x7d, 0x12, 0x87, 0x01, 0x0a, 0x09, 0x44, 0x65,
	0x6c, 0x65, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x12, 0x1c, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61,
	0x2e, 0x61, 0x70, 0x69, 0x2e, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x4f, 0x72, 0x67, 0x52, 0x65,
	0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x16, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x45, 0x6d, 0x70, 0x74, 0x79, 0x22, 0x44, 0x92,
	0x41, 0x23, 0x4a, 0x21, 0x0a, 0x03, 0x32, 0x30, 0x34, 0x12, 0x1a, 0x0a, 0x16, 0x41, 0x20, 0x73,
	0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x66, 0x75, 0x6c, 0x20, 0x72, 0x65, 0x73, 0x70, 0x6f, 0x6e,
	0x73, 0x65, 0x2e, 0x12, 0x00, 0x82, 0xd3, 0xe4, 0x93, 0x02, 0x18, 0x2a, 0x16, 0x2f, 0x76, 0x31,
	0x2f, 0x6f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x2f, 0x7b,
	0x69, 0x64, 0x7d, 0x12, 0x60, 0x0a, 0x08, 0x4c, 0x69, 0x73, 0x74, 0x4f, 0x72, 0x67, 0x73, 0x12,
	0x1b, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4c, 0x69, 0x73,
	0x74, 0x4f, 0x72, 0x67, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x1c, 0x2e, 0x6f,
	0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4c, 0x69, 0x73, 0x74, 0x4f, 0x72,
	0x67, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x19, 0x82, 0xd3, 0xe4, 0x93,
	0x02, 0x13, 0x12, 0x11, 0x2f, 0x76, 0x31, 0x2f, 0x6f, 0x72, 0x67, 0x61, 0x6e, 0x69, 0x7a, 0x61,
	0x74, 0x69, 0x6f, 0x6e, 0x73, 0x42, 0x20, 0x5a, 0x1e, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e,
	0x63, 0x6f, 0x6d, 0x2f, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x2f, 0x67, 0x6f, 0x2f, 0x61, 0x70, 0x69, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_api_ownmfa_org_proto_rawDescOnce sync.Once
	file_api_ownmfa_org_proto_rawDescData = file_api_ownmfa_org_proto_rawDesc
)

func file_api_ownmfa_org_proto_rawDescGZIP() []byte {
	file_api_ownmfa_org_proto_rawDescOnce.Do(func() {
		file_api_ownmfa_org_proto_rawDescData = protoimpl.X.CompressGZIP(file_api_ownmfa_org_proto_rawDescData)
	})
	return file_api_ownmfa_org_proto_rawDescData
}

var file_api_ownmfa_org_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_api_ownmfa_org_proto_msgTypes = make([]protoimpl.MessageInfo, 7)
var file_api_ownmfa_org_proto_goTypes = []any{
	(Plan)(0),                     // 0: ownmfa.api.Plan
	(*Org)(nil),                   // 1: ownmfa.api.Org
	(*CreateOrgRequest)(nil),      // 2: ownmfa.api.CreateOrgRequest
	(*GetOrgRequest)(nil),         // 3: ownmfa.api.GetOrgRequest
	(*UpdateOrgRequest)(nil),      // 4: ownmfa.api.UpdateOrgRequest
	(*DeleteOrgRequest)(nil),      // 5: ownmfa.api.DeleteOrgRequest
	(*ListOrgsRequest)(nil),       // 6: ownmfa.api.ListOrgsRequest
	(*ListOrgsResponse)(nil),      // 7: ownmfa.api.ListOrgsResponse
	(Status)(0),                   // 8: ownmfa.api.Status
	(*timestamppb.Timestamp)(nil), // 9: google.protobuf.Timestamp
	(*fieldmaskpb.FieldMask)(nil), // 10: google.protobuf.FieldMask
	(*emptypb.Empty)(nil),         // 11: google.protobuf.Empty
}
var file_api_ownmfa_org_proto_depIdxs = []int32{
	8,  // 0: ownmfa.api.Org.status:type_name -> ownmfa.api.Status
	0,  // 1: ownmfa.api.Org.plan:type_name -> ownmfa.api.Plan
	9,  // 2: ownmfa.api.Org.created_at:type_name -> google.protobuf.Timestamp
	9,  // 3: ownmfa.api.Org.updated_at:type_name -> google.protobuf.Timestamp
	1,  // 4: ownmfa.api.CreateOrgRequest.org:type_name -> ownmfa.api.Org
	1,  // 5: ownmfa.api.UpdateOrgRequest.org:type_name -> ownmfa.api.Org
	10, // 6: ownmfa.api.UpdateOrgRequest.update_mask:type_name -> google.protobuf.FieldMask
	1,  // 7: ownmfa.api.ListOrgsResponse.orgs:type_name -> ownmfa.api.Org
	2,  // 8: ownmfa.api.OrgService.CreateOrg:input_type -> ownmfa.api.CreateOrgRequest
	3,  // 9: ownmfa.api.OrgService.GetOrg:input_type -> ownmfa.api.GetOrgRequest
	4,  // 10: ownmfa.api.OrgService.UpdateOrg:input_type -> ownmfa.api.UpdateOrgRequest
	5,  // 11: ownmfa.api.OrgService.DeleteOrg:input_type -> ownmfa.api.DeleteOrgRequest
	6,  // 12: ownmfa.api.OrgService.ListOrgs:input_type -> ownmfa.api.ListOrgsRequest
	1,  // 13: ownmfa.api.OrgService.CreateOrg:output_type -> ownmfa.api.Org
	1,  // 14: ownmfa.api.OrgService.GetOrg:output_type -> ownmfa.api.Org
	1,  // 15: ownmfa.api.OrgService.UpdateOrg:output_type -> ownmfa.api.Org
	11, // 16: ownmfa.api.OrgService.DeleteOrg:output_type -> google.protobuf.Empty
	7,  // 17: ownmfa.api.OrgService.ListOrgs:output_type -> ownmfa.api.ListOrgsResponse
	13, // [13:18] is the sub-list for method output_type
	8,  // [8:13] is the sub-list for method input_type
	8,  // [8:8] is the sub-list for extension type_name
	8,  // [8:8] is the sub-list for extension extendee
	0,  // [0:8] is the sub-list for field type_name
}

func init() { file_api_ownmfa_org_proto_init() }
func file_api_ownmfa_org_proto_init() {
	if File_api_ownmfa_org_proto != nil {
		return
	}
	file_api_ownmfa_status_proto_init()
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_api_ownmfa_org_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   7,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_api_ownmfa_org_proto_goTypes,
		DependencyIndexes: file_api_ownmfa_org_proto_depIdxs,
		EnumInfos:         file_api_ownmfa_org_proto_enumTypes,
		MessageInfos:      file_api_ownmfa_org_proto_msgTypes,
	}.Build()
	File_api_ownmfa_org_proto = out.File
	file_api_ownmfa_org_proto_rawDesc = nil
	file_api_ownmfa_org_proto_goTypes = nil
	file_api_ownmfa_org_proto_depIdxs = nil
}
