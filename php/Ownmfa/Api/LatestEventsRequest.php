<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_event.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * LatestEventsRequest is sent to list latest organization events.
 *
 * Generated from protobuf message <code>ownmfa.api.LatestEventsRequest</code>
 */
class LatestEventsRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * Application ID (UUID). If not specified, all applications are included.
     *
     * Generated from protobuf field <code>string app_id = 1 [json_name = "appID", (.validate.rules) = {</code>
     */
    protected $app_id = '';
    /**
     * Identity ID (UUID). If not specified, all identities are included.
     *
     * Generated from protobuf field <code>string identity_id = 2 [json_name = "identityID", (.validate.rules) = {</code>
     */
    protected $identity_id = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $app_id
     *           Application ID (UUID). If not specified, all applications are included.
     *     @type string $identity_id
     *           Identity ID (UUID). If not specified, all identities are included.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaEvent::initOnce();
        parent::__construct($data);
    }

    /**
     * Application ID (UUID). If not specified, all applications are included.
     *
     * Generated from protobuf field <code>string app_id = 1 [json_name = "appID", (.validate.rules) = {</code>
     * @return string
     */
    public function getAppId()
    {
        return $this->app_id;
    }

    /**
     * Application ID (UUID). If not specified, all applications are included.
     *
     * Generated from protobuf field <code>string app_id = 1 [json_name = "appID", (.validate.rules) = {</code>
     * @param string $var
     * @return $this
     */
    public function setAppId($var)
    {
        GPBUtil::checkString($var, True);
        $this->app_id = $var;

        return $this;
    }

    /**
     * Identity ID (UUID). If not specified, all identities are included.
     *
     * Generated from protobuf field <code>string identity_id = 2 [json_name = "identityID", (.validate.rules) = {</code>
     * @return string
     */
    public function getIdentityId()
    {
        return $this->identity_id;
    }

    /**
     * Identity ID (UUID). If not specified, all identities are included.
     *
     * Generated from protobuf field <code>string identity_id = 2 [json_name = "identityID", (.validate.rules) = {</code>
     * @param string $var
     * @return $this
     */
    public function setIdentityId($var)
    {
        GPBUtil::checkString($var, True);
        $this->identity_id = $var;

        return $this;
    }

}

