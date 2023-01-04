// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.21.9
// source: api/ownmfa_event.proto

package api

import (
	_ "github.com/envoyproxy/protoc-gen-validate/validate"
	_ "google.golang.org/genproto/googleapis/api/annotations"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
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

// EventStatus represents the status of an event.
type EventStatus int32

const (
	// Event status is not specified.
	EventStatus_EVENT_STATUS_UNSPECIFIED EventStatus = 0
	// Identity was successfully created.
	EventStatus_IDENTITY_CREATED EventStatus = 1
	// Challenge was successfully sent.
	EventStatus_CHALLENGE_SENT EventStatus = 2
	// Challenge was requested, but was not required by the identity's authentication method.
	EventStatus_CHALLENGE_NOOP EventStatus = 3
	// Challenge failed to send. The Event error field will be populated.
	EventStatus_CHALLENGE_FAIL EventStatus = 4
	// Identity was successfully activated.
	EventStatus_ACTIVATE_SUCCESS EventStatus = 5
	// Identity failed to activate. The Event error field will be populated.
	EventStatus_ACTIVATE_FAIL EventStatus = 6
	// Identity was successfully verified.
	EventStatus_VERIFY_SUCCESS EventStatus = 7
	// Identity failed to verify. The Event error field will be populated.
	EventStatus_VERIFY_FAIL EventStatus = 8
	// Identity was successfully deleted.
	EventStatus_IDENTITY_DELETED EventStatus = 9
)

// Enum value maps for EventStatus.
var (
	EventStatus_name = map[int32]string{
		0: "EVENT_STATUS_UNSPECIFIED",
		1: "IDENTITY_CREATED",
		2: "CHALLENGE_SENT",
		3: "CHALLENGE_NOOP",
		4: "CHALLENGE_FAIL",
		5: "ACTIVATE_SUCCESS",
		6: "ACTIVATE_FAIL",
		7: "VERIFY_SUCCESS",
		8: "VERIFY_FAIL",
		9: "IDENTITY_DELETED",
	}
	EventStatus_value = map[string]int32{
		"EVENT_STATUS_UNSPECIFIED": 0,
		"IDENTITY_CREATED":         1,
		"CHALLENGE_SENT":           2,
		"CHALLENGE_NOOP":           3,
		"CHALLENGE_FAIL":           4,
		"ACTIVATE_SUCCESS":         5,
		"ACTIVATE_FAIL":            6,
		"VERIFY_SUCCESS":           7,
		"VERIFY_FAIL":              8,
		"IDENTITY_DELETED":         9,
	}
)

func (x EventStatus) Enum() *EventStatus {
	p := new(EventStatus)
	*p = x
	return p
}

func (x EventStatus) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (EventStatus) Descriptor() protoreflect.EnumDescriptor {
	return file_api_ownmfa_event_proto_enumTypes[0].Descriptor()
}

func (EventStatus) Type() protoreflect.EnumType {
	return &file_api_ownmfa_event_proto_enumTypes[0]
}

func (x EventStatus) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use EventStatus.Descriptor instead.
func (EventStatus) EnumDescriptor() ([]byte, []int) {
	return file_api_ownmfa_event_proto_rawDescGZIP(), []int{0}
}

// Event represents an event as stored in the database.
type Event struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Organization ID (UUID).
	OrgId string `protobuf:"bytes,1,opt,name=org_id,json=orgID,proto3" json:"org_id,omitempty"`
	// Application ID (UUID).
	AppId string `protobuf:"bytes,2,opt,name=app_id,json=appID,proto3" json:"app_id,omitempty"`
	// Identity ID (UUID).
	IdentityId string `protobuf:"bytes,3,opt,name=identity_id,json=identityID,proto3" json:"identity_id,omitempty"`
	// Event status.
	Status EventStatus `protobuf:"varint,4,opt,name=status,proto3,enum=ownmfa.api.EventStatus" json:"status,omitempty"`
	// Error message. This field will be empty if no error was encountered.
	Error string `protobuf:"bytes,5,opt,name=error,proto3" json:"error,omitempty"`
	// Event creation timestamp.
	CreatedAt *timestamppb.Timestamp `protobuf:"bytes,6,opt,name=created_at,json=createdAt,proto3" json:"created_at,omitempty"`
	// Trace ID (UUID).
	TraceId string `protobuf:"bytes,7,opt,name=trace_id,json=traceId,proto3" json:"trace_id,omitempty"`
}

func (x *Event) Reset() {
	*x = Event{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_ownmfa_event_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Event) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Event) ProtoMessage() {}

func (x *Event) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_event_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Event.ProtoReflect.Descriptor instead.
func (*Event) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_event_proto_rawDescGZIP(), []int{0}
}

func (x *Event) GetOrgId() string {
	if x != nil {
		return x.OrgId
	}
	return ""
}

func (x *Event) GetAppId() string {
	if x != nil {
		return x.AppId
	}
	return ""
}

func (x *Event) GetIdentityId() string {
	if x != nil {
		return x.IdentityId
	}
	return ""
}

func (x *Event) GetStatus() EventStatus {
	if x != nil {
		return x.Status
	}
	return EventStatus_EVENT_STATUS_UNSPECIFIED
}

func (x *Event) GetError() string {
	if x != nil {
		return x.Error
	}
	return ""
}

func (x *Event) GetCreatedAt() *timestamppb.Timestamp {
	if x != nil {
		return x.CreatedAt
	}
	return nil
}

func (x *Event) GetTraceId() string {
	if x != nil {
		return x.TraceId
	}
	return ""
}

// ListEventsRequest is sent to list identity events in an [end, start) time range, in descending timestamp order.
type ListEventsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Identity ID (UUID).
	IdentityId string `protobuf:"bytes,1,opt,name=identity_id,json=identityID,proto3" json:"identity_id,omitempty"`
	// Events range end time. Defaults to current time if not specified. Maximum supported time range is 90 days.
	EndTime *timestamppb.Timestamp `protobuf:"bytes,2,opt,name=end_time,json=endTime,proto3" json:"end_time,omitempty"`
	// Events range start time. Defaults to end_time - 24 hours if not specified or after end_time. Maximum supported time range is 90 days.
	StartTime *timestamppb.Timestamp `protobuf:"bytes,3,opt,name=start_time,json=startTime,proto3" json:"start_time,omitempty"`
}

func (x *ListEventsRequest) Reset() {
	*x = ListEventsRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_ownmfa_event_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListEventsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListEventsRequest) ProtoMessage() {}

func (x *ListEventsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_event_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListEventsRequest.ProtoReflect.Descriptor instead.
func (*ListEventsRequest) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_event_proto_rawDescGZIP(), []int{1}
}

func (x *ListEventsRequest) GetIdentityId() string {
	if x != nil {
		return x.IdentityId
	}
	return ""
}

func (x *ListEventsRequest) GetEndTime() *timestamppb.Timestamp {
	if x != nil {
		return x.EndTime
	}
	return nil
}

func (x *ListEventsRequest) GetStartTime() *timestamppb.Timestamp {
	if x != nil {
		return x.StartTime
	}
	return nil
}

// ListEventsResponse is sent in response to an identity events list.
type ListEventsResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Event array, ordered by descending created_at timestamp.
	Events []*Event `protobuf:"bytes,1,rep,name=events,proto3" json:"events,omitempty"`
}

func (x *ListEventsResponse) Reset() {
	*x = ListEventsResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_ownmfa_event_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListEventsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListEventsResponse) ProtoMessage() {}

func (x *ListEventsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_event_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListEventsResponse.ProtoReflect.Descriptor instead.
func (*ListEventsResponse) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_event_proto_rawDescGZIP(), []int{2}
}

func (x *ListEventsResponse) GetEvents() []*Event {
	if x != nil {
		return x.Events
	}
	return nil
}

// LatestEventsRequest is sent to list latest organization events.
type LatestEventsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Application ID (UUID). If not specified, all applications are included.
	AppId string `protobuf:"bytes,1,opt,name=app_id,json=appID,proto3" json:"app_id,omitempty"`
	// Identity ID (UUID). If not specified, all identities are included.
	IdentityId string `protobuf:"bytes,2,opt,name=identity_id,json=identityID,proto3" json:"identity_id,omitempty"`
}

func (x *LatestEventsRequest) Reset() {
	*x = LatestEventsRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_ownmfa_event_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *LatestEventsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*LatestEventsRequest) ProtoMessage() {}

func (x *LatestEventsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_event_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use LatestEventsRequest.ProtoReflect.Descriptor instead.
func (*LatestEventsRequest) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_event_proto_rawDescGZIP(), []int{3}
}

func (x *LatestEventsRequest) GetAppId() string {
	if x != nil {
		return x.AppId
	}
	return ""
}

func (x *LatestEventsRequest) GetIdentityId() string {
	if x != nil {
		return x.IdentityId
	}
	return ""
}

// LatestEventsResponse is sent in response to an organization latest list.
type LatestEventsResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Event array, ordered by descending created_at timestamp.
	Events []*Event `protobuf:"bytes,1,rep,name=events,proto3" json:"events,omitempty"`
}

func (x *LatestEventsResponse) Reset() {
	*x = LatestEventsResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_ownmfa_event_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *LatestEventsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*LatestEventsResponse) ProtoMessage() {}

func (x *LatestEventsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_api_ownmfa_event_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use LatestEventsResponse.ProtoReflect.Descriptor instead.
func (*LatestEventsResponse) Descriptor() ([]byte, []int) {
	return file_api_ownmfa_event_proto_rawDescGZIP(), []int{4}
}

func (x *LatestEventsResponse) GetEvents() []*Event {
	if x != nil {
		return x.Events
	}
	return nil
}

var File_api_ownmfa_event_proto protoreflect.FileDescriptor

var file_api_ownmfa_event_proto_rawDesc = []byte{
	0x0a, 0x16, 0x61, 0x70, 0x69, 0x2f, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x5f, 0x65, 0x76, 0x65,
	0x6e, 0x74, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x0a, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61,
	0x2e, 0x61, 0x70, 0x69, 0x1a, 0x1f, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1c, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x61, 0x70,
	0x69, 0x2f, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x1a, 0x1f, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x61, 0x70, 0x69, 0x2f,
	0x66, 0x69, 0x65, 0x6c, 0x64, 0x5f, 0x62, 0x65, 0x68, 0x61, 0x76, 0x69, 0x6f, 0x72, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x17, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x76,
	0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xf3, 0x01,
	0x0a, 0x05, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x12, 0x15, 0x0a, 0x06, 0x6f, 0x72, 0x67, 0x5f, 0x69,
	0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x6f, 0x72, 0x67, 0x49, 0x44, 0x12, 0x15,
	0x0a, 0x06, 0x61, 0x70, 0x70, 0x5f, 0x69, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05,
	0x61, 0x70, 0x70, 0x49, 0x44, 0x12, 0x1f, 0x0a, 0x0b, 0x69, 0x64, 0x65, 0x6e, 0x74, 0x69, 0x74,
	0x79, 0x5f, 0x69, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0a, 0x69, 0x64, 0x65, 0x6e,
	0x74, 0x69, 0x74, 0x79, 0x49, 0x44, 0x12, 0x2f, 0x0a, 0x06, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73,
	0x18, 0x04, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x17, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e,
	0x61, 0x70, 0x69, 0x2e, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x52,
	0x06, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x12, 0x14, 0x0a, 0x05, 0x65, 0x72, 0x72, 0x6f, 0x72,
	0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x12, 0x39, 0x0a,
	0x0a, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x5f, 0x61, 0x74, 0x18, 0x06, 0x20, 0x01, 0x28,
	0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x52, 0x09, 0x63,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x41, 0x74, 0x12, 0x19, 0x0a, 0x08, 0x74, 0x72, 0x61, 0x63,
	0x65, 0x5f, 0x69, 0x64, 0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x74, 0x72, 0x61, 0x63,
	0x65, 0x49, 0x64, 0x22, 0xb3, 0x01, 0x0a, 0x11, 0x4c, 0x69, 0x73, 0x74, 0x45, 0x76, 0x65, 0x6e,
	0x74, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x2c, 0x0a, 0x0b, 0x69, 0x64, 0x65,
	0x6e, 0x74, 0x69, 0x74, 0x79, 0x5f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x42, 0x0b,
	0xfa, 0x42, 0x05, 0x72, 0x03, 0xb0, 0x01, 0x01, 0xe0, 0x41, 0x02, 0x52, 0x0a, 0x69, 0x64, 0x65,
	0x6e, 0x74, 0x69, 0x74, 0x79, 0x49, 0x44, 0x12, 0x35, 0x0a, 0x08, 0x65, 0x6e, 0x64, 0x5f, 0x74,
	0x69, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67,
	0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65,
	0x73, 0x74, 0x61, 0x6d, 0x70, 0x52, 0x07, 0x65, 0x6e, 0x64, 0x54, 0x69, 0x6d, 0x65, 0x12, 0x39,
	0x0a, 0x0a, 0x73, 0x74, 0x61, 0x72, 0x74, 0x5f, 0x74, 0x69, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x52, 0x09,
	0x73, 0x74, 0x61, 0x72, 0x74, 0x54, 0x69, 0x6d, 0x65, 0x22, 0x3f, 0x0a, 0x12, 0x4c, 0x69, 0x73,
	0x74, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12,
	0x29, 0x0a, 0x06, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32,
	0x11, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x45, 0x76, 0x65,
	0x6e, 0x74, 0x52, 0x06, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x22, 0x67, 0x0a, 0x13, 0x4c, 0x61,
	0x74, 0x65, 0x73, 0x74, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x12, 0x22, 0x0a, 0x06, 0x61, 0x70, 0x70, 0x5f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x09, 0x42, 0x0b, 0xfa, 0x42, 0x08, 0x72, 0x06, 0xb0, 0x01, 0x01, 0xd0, 0x01, 0x01, 0x52, 0x05,
	0x61, 0x70, 0x70, 0x49, 0x44, 0x12, 0x2c, 0x0a, 0x0b, 0x69, 0x64, 0x65, 0x6e, 0x74, 0x69, 0x74,
	0x79, 0x5f, 0x69, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x42, 0x0b, 0xfa, 0x42, 0x08, 0x72,
	0x06, 0xb0, 0x01, 0x01, 0xd0, 0x01, 0x01, 0x52, 0x0a, 0x69, 0x64, 0x65, 0x6e, 0x74, 0x69, 0x74,
	0x79, 0x49, 0x44, 0x22, 0x41, 0x0a, 0x14, 0x4c, 0x61, 0x74, 0x65, 0x73, 0x74, 0x45, 0x76, 0x65,
	0x6e, 0x74, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x29, 0x0a, 0x06, 0x65,
	0x76, 0x65, 0x6e, 0x74, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x11, 0x2e, 0x6f, 0x77,
	0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x52, 0x06,
	0x65, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x2a, 0xe1, 0x01, 0x0a, 0x0b, 0x45, 0x76, 0x65, 0x6e, 0x74,
	0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x12, 0x1c, 0x0a, 0x18, 0x45, 0x56, 0x45, 0x4e, 0x54, 0x5f,
	0x53, 0x54, 0x41, 0x54, 0x55, 0x53, 0x5f, 0x55, 0x4e, 0x53, 0x50, 0x45, 0x43, 0x49, 0x46, 0x49,
	0x45, 0x44, 0x10, 0x00, 0x12, 0x14, 0x0a, 0x10, 0x49, 0x44, 0x45, 0x4e, 0x54, 0x49, 0x54, 0x59,
	0x5f, 0x43, 0x52, 0x45, 0x41, 0x54, 0x45, 0x44, 0x10, 0x01, 0x12, 0x12, 0x0a, 0x0e, 0x43, 0x48,
	0x41, 0x4c, 0x4c, 0x45, 0x4e, 0x47, 0x45, 0x5f, 0x53, 0x45, 0x4e, 0x54, 0x10, 0x02, 0x12, 0x12,
	0x0a, 0x0e, 0x43, 0x48, 0x41, 0x4c, 0x4c, 0x45, 0x4e, 0x47, 0x45, 0x5f, 0x4e, 0x4f, 0x4f, 0x50,
	0x10, 0x03, 0x12, 0x12, 0x0a, 0x0e, 0x43, 0x48, 0x41, 0x4c, 0x4c, 0x45, 0x4e, 0x47, 0x45, 0x5f,
	0x46, 0x41, 0x49, 0x4c, 0x10, 0x04, 0x12, 0x14, 0x0a, 0x10, 0x41, 0x43, 0x54, 0x49, 0x56, 0x41,
	0x54, 0x45, 0x5f, 0x53, 0x55, 0x43, 0x43, 0x45, 0x53, 0x53, 0x10, 0x05, 0x12, 0x11, 0x0a, 0x0d,
	0x41, 0x43, 0x54, 0x49, 0x56, 0x41, 0x54, 0x45, 0x5f, 0x46, 0x41, 0x49, 0x4c, 0x10, 0x06, 0x12,
	0x12, 0x0a, 0x0e, 0x56, 0x45, 0x52, 0x49, 0x46, 0x59, 0x5f, 0x53, 0x55, 0x43, 0x43, 0x45, 0x53,
	0x53, 0x10, 0x07, 0x12, 0x0f, 0x0a, 0x0b, 0x56, 0x45, 0x52, 0x49, 0x46, 0x59, 0x5f, 0x46, 0x41,
	0x49, 0x4c, 0x10, 0x08, 0x12, 0x14, 0x0a, 0x10, 0x49, 0x44, 0x45, 0x4e, 0x54, 0x49, 0x54, 0x59,
	0x5f, 0x44, 0x45, 0x4c, 0x45, 0x54, 0x45, 0x44, 0x10, 0x09, 0x32, 0xdd, 0x01, 0x0a, 0x0c, 0x45,
	0x76, 0x65, 0x6e, 0x74, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x5f, 0x0a, 0x0a, 0x4c,
	0x69, 0x73, 0x74, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x12, 0x1d, 0x2e, 0x6f, 0x77, 0x6e, 0x6d,
	0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4c, 0x69, 0x73, 0x74, 0x45, 0x76, 0x65, 0x6e, 0x74,
	0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x1e, 0x2e, 0x6f, 0x77, 0x6e, 0x6d, 0x66,
	0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4c, 0x69, 0x73, 0x74, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x12, 0x82, 0xd3, 0xe4, 0x93, 0x02, 0x0c,
	0x12, 0x0a, 0x2f, 0x76, 0x31, 0x2f, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x12, 0x6c, 0x0a, 0x0c,
	0x4c, 0x61, 0x74, 0x65, 0x73, 0x74, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x12, 0x1f, 0x2e, 0x6f,
	0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4c, 0x61, 0x74, 0x65, 0x73, 0x74,
	0x45, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x20, 0x2e,
	0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x4c, 0x61, 0x74, 0x65, 0x73,
	0x74, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22,
	0x19, 0x82, 0xd3, 0xe4, 0x93, 0x02, 0x13, 0x12, 0x11, 0x2f, 0x76, 0x31, 0x2f, 0x65, 0x76, 0x65,
	0x6e, 0x74, 0x73, 0x2f, 0x6c, 0x61, 0x74, 0x65, 0x73, 0x74, 0x42, 0x1e, 0x5a, 0x1c, 0x67, 0x69,
	0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6f, 0x77, 0x6e, 0x6d, 0x66, 0x61, 0x2f,
	0x61, 0x70, 0x69, 0x2f, 0x67, 0x6f, 0x2f, 0x61, 0x70, 0x69, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x33,
}

var (
	file_api_ownmfa_event_proto_rawDescOnce sync.Once
	file_api_ownmfa_event_proto_rawDescData = file_api_ownmfa_event_proto_rawDesc
)

func file_api_ownmfa_event_proto_rawDescGZIP() []byte {
	file_api_ownmfa_event_proto_rawDescOnce.Do(func() {
		file_api_ownmfa_event_proto_rawDescData = protoimpl.X.CompressGZIP(file_api_ownmfa_event_proto_rawDescData)
	})
	return file_api_ownmfa_event_proto_rawDescData
}

var file_api_ownmfa_event_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_api_ownmfa_event_proto_msgTypes = make([]protoimpl.MessageInfo, 5)
var file_api_ownmfa_event_proto_goTypes = []interface{}{
	(EventStatus)(0),              // 0: ownmfa.api.EventStatus
	(*Event)(nil),                 // 1: ownmfa.api.Event
	(*ListEventsRequest)(nil),     // 2: ownmfa.api.ListEventsRequest
	(*ListEventsResponse)(nil),    // 3: ownmfa.api.ListEventsResponse
	(*LatestEventsRequest)(nil),   // 4: ownmfa.api.LatestEventsRequest
	(*LatestEventsResponse)(nil),  // 5: ownmfa.api.LatestEventsResponse
	(*timestamppb.Timestamp)(nil), // 6: google.protobuf.Timestamp
}
var file_api_ownmfa_event_proto_depIdxs = []int32{
	0, // 0: ownmfa.api.Event.status:type_name -> ownmfa.api.EventStatus
	6, // 1: ownmfa.api.Event.created_at:type_name -> google.protobuf.Timestamp
	6, // 2: ownmfa.api.ListEventsRequest.end_time:type_name -> google.protobuf.Timestamp
	6, // 3: ownmfa.api.ListEventsRequest.start_time:type_name -> google.protobuf.Timestamp
	1, // 4: ownmfa.api.ListEventsResponse.events:type_name -> ownmfa.api.Event
	1, // 5: ownmfa.api.LatestEventsResponse.events:type_name -> ownmfa.api.Event
	2, // 6: ownmfa.api.EventService.ListEvents:input_type -> ownmfa.api.ListEventsRequest
	4, // 7: ownmfa.api.EventService.LatestEvents:input_type -> ownmfa.api.LatestEventsRequest
	3, // 8: ownmfa.api.EventService.ListEvents:output_type -> ownmfa.api.ListEventsResponse
	5, // 9: ownmfa.api.EventService.LatestEvents:output_type -> ownmfa.api.LatestEventsResponse
	8, // [8:10] is the sub-list for method output_type
	6, // [6:8] is the sub-list for method input_type
	6, // [6:6] is the sub-list for extension type_name
	6, // [6:6] is the sub-list for extension extendee
	0, // [0:6] is the sub-list for field type_name
}

func init() { file_api_ownmfa_event_proto_init() }
func file_api_ownmfa_event_proto_init() {
	if File_api_ownmfa_event_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_api_ownmfa_event_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Event); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_api_ownmfa_event_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListEventsRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_api_ownmfa_event_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListEventsResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_api_ownmfa_event_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*LatestEventsRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_api_ownmfa_event_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*LatestEventsResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_api_ownmfa_event_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   5,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_api_ownmfa_event_proto_goTypes,
		DependencyIndexes: file_api_ownmfa_event_proto_depIdxs,
		EnumInfos:         file_api_ownmfa_event_proto_enumTypes,
		MessageInfos:      file_api_ownmfa_event_proto_msgTypes,
	}.Build()
	File_api_ownmfa_event_proto = out.File
	file_api_ownmfa_event_proto_rawDesc = nil
	file_api_ownmfa_event_proto_goTypes = nil
	file_api_ownmfa_event_proto_depIdxs = nil
}
