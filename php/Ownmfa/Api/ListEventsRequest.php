<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_event.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * ListEventsRequest is sent to list identity events in an [end, start) time range, in descending timestamp order.
 *
 * Generated from protobuf message <code>ownmfa.api.ListEventsRequest</code>
 */
class ListEventsRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * Identity ID (UUID).
     *
     * Generated from protobuf field <code>string identity_id = 1 [json_name = "identityID", (.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     */
    protected $identity_id = '';
    /**
     * Events range end time. Defaults to current time if not specified. Maximum supported time range is 90 days.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp end_time = 2;</code>
     */
    protected $end_time = null;
    /**
     * Events range start time. Defaults to end_time - 24 hours if not specified or after end_time. Maximum supported time range is 90 days.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp start_time = 3;</code>
     */
    protected $start_time = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $identity_id
     *           Identity ID (UUID).
     *     @type \Google\Protobuf\Timestamp $end_time
     *           Events range end time. Defaults to current time if not specified. Maximum supported time range is 90 days.
     *     @type \Google\Protobuf\Timestamp $start_time
     *           Events range start time. Defaults to end_time - 24 hours if not specified or after end_time. Maximum supported time range is 90 days.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaEvent::initOnce();
        parent::__construct($data);
    }

    /**
     * Identity ID (UUID).
     *
     * Generated from protobuf field <code>string identity_id = 1 [json_name = "identityID", (.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @return string
     */
    public function getIdentityId()
    {
        return $this->identity_id;
    }

    /**
     * Identity ID (UUID).
     *
     * Generated from protobuf field <code>string identity_id = 1 [json_name = "identityID", (.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @param string $var
     * @return $this
     */
    public function setIdentityId($var)
    {
        GPBUtil::checkString($var, True);
        $this->identity_id = $var;

        return $this;
    }

    /**
     * Events range end time. Defaults to current time if not specified. Maximum supported time range is 90 days.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp end_time = 2;</code>
     * @return \Google\Protobuf\Timestamp|null
     */
    public function getEndTime()
    {
        return $this->end_time;
    }

    public function hasEndTime()
    {
        return isset($this->end_time);
    }

    public function clearEndTime()
    {
        unset($this->end_time);
    }

    /**
     * Events range end time. Defaults to current time if not specified. Maximum supported time range is 90 days.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp end_time = 2;</code>
     * @param \Google\Protobuf\Timestamp $var
     * @return $this
     */
    public function setEndTime($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Timestamp::class);
        $this->end_time = $var;

        return $this;
    }

    /**
     * Events range start time. Defaults to end_time - 24 hours if not specified or after end_time. Maximum supported time range is 90 days.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp start_time = 3;</code>
     * @return \Google\Protobuf\Timestamp|null
     */
    public function getStartTime()
    {
        return $this->start_time;
    }

    public function hasStartTime()
    {
        return isset($this->start_time);
    }

    public function clearStartTime()
    {
        unset($this->start_time);
    }

    /**
     * Events range start time. Defaults to end_time - 24 hours if not specified or after end_time. Maximum supported time range is 90 days.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp start_time = 3;</code>
     * @param \Google\Protobuf\Timestamp $var
     * @return $this
     */
    public function setStartTime($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Timestamp::class);
        $this->start_time = $var;

        return $this;
    }

}

