<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_event.proto

namespace GPBMetadata\Api;

class OwnmfaEvent
{
    public static $is_initialized = false;

    public static function initOnce() {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();

        if (static::$is_initialized == true) {
          return;
        }
        \GPBMetadata\Google\Protobuf\Timestamp::initOnce();
        \GPBMetadata\Google\Api\Annotations::initOnce();
        \GPBMetadata\Google\Api\FieldBehavior::initOnce();
        \GPBMetadata\Validate\Validate::initOnce();
        $pool->internalAddGeneratedFile(
            '
�	
api/ownmfa_event.proto
ownmfa.apigoogle/api/annotations.protogoogle/api/field_behavior.protovalidate/validate.proto"�
Event
org_id (	RorgID
app_id (	RappID
identity_id (	R
identityID\'
status (2.ownmfa.api.EventStatus
error (	.

created_at (2.google.protobuf.Timestamp
trace_id (	"�
ListEventsRequest-
identity_id (	B�A�Br�R
identityID,
end_time (2.google.protobuf.Timestamp.

start_time (2.google.protobuf.Timestamp"7
ListEventsResponse!
events (2.ownmfa.api.Event"g
LatestEventsRequest"
app_id (	B�Br��RappID,
identity_id (	B�Br��R
identityID"9
LatestEventsResponse!
events (2.ownmfa.api.Event*�
EventStatus
EVENT_STATUS_UNSPECIFIED 
IDENTITY_CREATED
CHALLENGE_SENT
CHALLENGE_NOOP
CHALLENGE_FAIL
ACTIVATE_SUCCESS
ACTIVATE_FAIL
VERIFY_SUCCESS
VERIFY_FAIL
IDENTITY_DELETED	2�
EventService_

ListEvents.ownmfa.api.ListEventsRequest.ownmfa.api.ListEventsResponse"���
/v1/eventsl
LatestEvents.ownmfa.api.LatestEventsRequest .ownmfa.api.LatestEventsResponse"���/v1/events/latestB Zgithub.com/ownmfa/proto/go/apibproto3'
        , true);

        static::$is_initialized = true;
    }
}

