// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             v4.24.4
// source: api/ownmfa_org.proto

package api

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

const (
	OrgService_CreateOrg_FullMethodName = "/ownmfa.api.OrgService/CreateOrg"
	OrgService_GetOrg_FullMethodName    = "/ownmfa.api.OrgService/GetOrg"
	OrgService_UpdateOrg_FullMethodName = "/ownmfa.api.OrgService/UpdateOrg"
	OrgService_DeleteOrg_FullMethodName = "/ownmfa.api.OrgService/DeleteOrg"
	OrgService_ListOrgs_FullMethodName  = "/ownmfa.api.OrgService/ListOrgs"
)

// OrgServiceClient is the client API for OrgService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type OrgServiceClient interface {
	// Create an organization. An organization is the top level resource and contains users, applications, and derived resources.
	CreateOrg(ctx context.Context, in *CreateOrgRequest, opts ...grpc.CallOption) (*Org, error)
	// Get an organization by ID. An organization is the top level resource and contains users, applications, and derived resources.
	GetOrg(ctx context.Context, in *GetOrgRequest, opts ...grpc.CallOption) (*Org, error)
	// Update an organization. An organization is the top level resource and contains users, applications, and derived resources.
	UpdateOrg(ctx context.Context, in *UpdateOrgRequest, opts ...grpc.CallOption) (*Org, error)
	// Delete an organization by ID. An organization is the top level resource and contains users, applications, and derived resources.
	DeleteOrg(ctx context.Context, in *DeleteOrgRequest, opts ...grpc.CallOption) (*emptypb.Empty, error)
	// List all organizations. An organization is the top level resource and contains users, applications, and derived resources.
	ListOrgs(ctx context.Context, in *ListOrgsRequest, opts ...grpc.CallOption) (*ListOrgsResponse, error)
}

type orgServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewOrgServiceClient(cc grpc.ClientConnInterface) OrgServiceClient {
	return &orgServiceClient{cc}
}

func (c *orgServiceClient) CreateOrg(ctx context.Context, in *CreateOrgRequest, opts ...grpc.CallOption) (*Org, error) {
	out := new(Org)
	err := c.cc.Invoke(ctx, OrgService_CreateOrg_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *orgServiceClient) GetOrg(ctx context.Context, in *GetOrgRequest, opts ...grpc.CallOption) (*Org, error) {
	out := new(Org)
	err := c.cc.Invoke(ctx, OrgService_GetOrg_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *orgServiceClient) UpdateOrg(ctx context.Context, in *UpdateOrgRequest, opts ...grpc.CallOption) (*Org, error) {
	out := new(Org)
	err := c.cc.Invoke(ctx, OrgService_UpdateOrg_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *orgServiceClient) DeleteOrg(ctx context.Context, in *DeleteOrgRequest, opts ...grpc.CallOption) (*emptypb.Empty, error) {
	out := new(emptypb.Empty)
	err := c.cc.Invoke(ctx, OrgService_DeleteOrg_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *orgServiceClient) ListOrgs(ctx context.Context, in *ListOrgsRequest, opts ...grpc.CallOption) (*ListOrgsResponse, error) {
	out := new(ListOrgsResponse)
	err := c.cc.Invoke(ctx, OrgService_ListOrgs_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// OrgServiceServer is the server API for OrgService service.
// All implementations must embed UnimplementedOrgServiceServer
// for forward compatibility
type OrgServiceServer interface {
	// Create an organization. An organization is the top level resource and contains users, applications, and derived resources.
	CreateOrg(context.Context, *CreateOrgRequest) (*Org, error)
	// Get an organization by ID. An organization is the top level resource and contains users, applications, and derived resources.
	GetOrg(context.Context, *GetOrgRequest) (*Org, error)
	// Update an organization. An organization is the top level resource and contains users, applications, and derived resources.
	UpdateOrg(context.Context, *UpdateOrgRequest) (*Org, error)
	// Delete an organization by ID. An organization is the top level resource and contains users, applications, and derived resources.
	DeleteOrg(context.Context, *DeleteOrgRequest) (*emptypb.Empty, error)
	// List all organizations. An organization is the top level resource and contains users, applications, and derived resources.
	ListOrgs(context.Context, *ListOrgsRequest) (*ListOrgsResponse, error)
	mustEmbedUnimplementedOrgServiceServer()
}

// UnimplementedOrgServiceServer must be embedded to have forward compatible implementations.
type UnimplementedOrgServiceServer struct {
}

func (UnimplementedOrgServiceServer) CreateOrg(context.Context, *CreateOrgRequest) (*Org, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateOrg not implemented")
}
func (UnimplementedOrgServiceServer) GetOrg(context.Context, *GetOrgRequest) (*Org, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetOrg not implemented")
}
func (UnimplementedOrgServiceServer) UpdateOrg(context.Context, *UpdateOrgRequest) (*Org, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateOrg not implemented")
}
func (UnimplementedOrgServiceServer) DeleteOrg(context.Context, *DeleteOrgRequest) (*emptypb.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeleteOrg not implemented")
}
func (UnimplementedOrgServiceServer) ListOrgs(context.Context, *ListOrgsRequest) (*ListOrgsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ListOrgs not implemented")
}
func (UnimplementedOrgServiceServer) mustEmbedUnimplementedOrgServiceServer() {}

// UnsafeOrgServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to OrgServiceServer will
// result in compilation errors.
type UnsafeOrgServiceServer interface {
	mustEmbedUnimplementedOrgServiceServer()
}

func RegisterOrgServiceServer(s grpc.ServiceRegistrar, srv OrgServiceServer) {
	s.RegisterService(&OrgService_ServiceDesc, srv)
}

func _OrgService_CreateOrg_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateOrgRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrgServiceServer).CreateOrg(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrgService_CreateOrg_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrgServiceServer).CreateOrg(ctx, req.(*CreateOrgRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrgService_GetOrg_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetOrgRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrgServiceServer).GetOrg(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrgService_GetOrg_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrgServiceServer).GetOrg(ctx, req.(*GetOrgRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrgService_UpdateOrg_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateOrgRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrgServiceServer).UpdateOrg(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrgService_UpdateOrg_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrgServiceServer).UpdateOrg(ctx, req.(*UpdateOrgRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrgService_DeleteOrg_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeleteOrgRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrgServiceServer).DeleteOrg(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrgService_DeleteOrg_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrgServiceServer).DeleteOrg(ctx, req.(*DeleteOrgRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrgService_ListOrgs_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ListOrgsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrgServiceServer).ListOrgs(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrgService_ListOrgs_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrgServiceServer).ListOrgs(ctx, req.(*ListOrgsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// OrgService_ServiceDesc is the grpc.ServiceDesc for OrgService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var OrgService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "ownmfa.api.OrgService",
	HandlerType: (*OrgServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateOrg",
			Handler:    _OrgService_CreateOrg_Handler,
		},
		{
			MethodName: "GetOrg",
			Handler:    _OrgService_GetOrg_Handler,
		},
		{
			MethodName: "UpdateOrg",
			Handler:    _OrgService_UpdateOrg_Handler,
		},
		{
			MethodName: "DeleteOrg",
			Handler:    _OrgService_DeleteOrg_Handler,
		},
		{
			MethodName: "ListOrgs",
			Handler:    _OrgService_ListOrgs_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "api/ownmfa_org.proto",
}
