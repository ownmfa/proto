<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_session.proto

namespace GPBMetadata\Api;

class OwnmfaSession
{
    public static $is_initialized = false;

    public static function initOnce() {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();

        if (static::$is_initialized == true) {
          return;
        }
        \GPBMetadata\Api\OwnmfaRole::initOnce();
        \GPBMetadata\Google\Protobuf\GPBEmpty::initOnce();
        \GPBMetadata\Google\Protobuf\Timestamp::initOnce();
        \GPBMetadata\Google\Api\Annotations::initOnce();
        \GPBMetadata\Google\Api\FieldBehavior::initOnce();
        \GPBMetadata\ProtocGenOpenapiv2\Options\Annotations::initOnce();
        \GPBMetadata\Validate\Validate::initOnce();
        $pool->internalAddGeneratedFile(
            '
�
api/ownmfa_session.proto
ownmfa.apigoogle/protobuf/empty.protogoogle/protobuf/timestamp.protogoogle/api/annotations.protogoogle/api/field_behavior.proto.protoc-gen-openapiv2/options/annotations.protovalidate/validate.proto"S
LoginRequest
email (	B�A
org_name (	B�A
password (	B�A"N
LoginResponse
token (	.

expires_at (2.google.protobuf.Timestamp"�
Key
id (	B�A
org_id (	B�ARorgID
name (	B�A�BrP2
role (2.ownmfa.api.RoleB�A�B�4

created_at (2.google.protobuf.TimestampB�A">
CreateKeyRequest*
key (2.ownmfa.api.KeyB�A�B�"@
CreateKeyResponse
key (2.ownmfa.api.Key
token (	",
DeleteKeyRequest
id (	B�A�Br�"B
ListKeysRequest
	page_size (B�B�

page_token (	"^
ListKeysResponse
keys (2.ownmfa.api.Key
next_page_token (	

total_size (2�
SessionService`
Login.ownmfa.api.LoginRequest.ownmfa.api.LoginResponse""�Ab ���"/v1/sessions/login:*�
	CreateKey.ownmfa.api.CreateKeyRequest.ownmfa.api.CreateKeyResponse"e�ADJB
201;
A successful response.!
.ownmfa.api.CreateKeyResponse���"/v1/sessions/keys:key�
	DeleteKey.ownmfa.api.DeleteKeyRequest.google.protobuf.Empty"D�A#J!
204
A successful response. ���*/v1/sessions/keys/{id}`
ListKeys.ownmfa.api.ListKeysRequest.ownmfa.api.ListKeysResponse"���/v1/sessions/keysB Zgithub.com/ownmfa/proto/go/apibproto3'
        , true);

        static::$is_initialized = true;
    }
}

