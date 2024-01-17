<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_app_identity.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * GetIdentityRequest is sent to get an identity.
 *
 * Generated from protobuf message <code>ownmfa.api.GetIdentityRequest</code>
 */
class GetIdentityRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * Identity ID (UUID) to get. Identity method_oneof may be returned in simplified form.
     *
     * Generated from protobuf field <code>string id = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     */
    protected $id = '';
    /**
     * Application ID (UUID).
     *
     * Generated from protobuf field <code>string app_id = 2 [json_name = "appID", (.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     */
    protected $app_id = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $id
     *           Identity ID (UUID) to get. Identity method_oneof may be returned in simplified form.
     *     @type string $app_id
     *           Application ID (UUID).
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaAppIdentity::initOnce();
        parent::__construct($data);
    }

    /**
     * Identity ID (UUID) to get. Identity method_oneof may be returned in simplified form.
     *
     * Generated from protobuf field <code>string id = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Identity ID (UUID) to get. Identity method_oneof may be returned in simplified form.
     *
     * Generated from protobuf field <code>string id = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @param string $var
     * @return $this
     */
    public function setId($var)
    {
        GPBUtil::checkString($var, True);
        $this->id = $var;

        return $this;
    }

    /**
     * Application ID (UUID).
     *
     * Generated from protobuf field <code>string app_id = 2 [json_name = "appID", (.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @return string
     */
    public function getAppId()
    {
        return $this->app_id;
    }

    /**
     * Application ID (UUID).
     *
     * Generated from protobuf field <code>string app_id = 2 [json_name = "appID", (.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @param string $var
     * @return $this
     */
    public function setAppId($var)
    {
        GPBUtil::checkString($var, True);
        $this->app_id = $var;

        return $this;
    }

}

