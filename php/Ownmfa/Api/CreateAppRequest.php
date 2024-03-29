<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_app_identity.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * CreateAppRequest is sent to create an application.
 *
 * Generated from protobuf message <code>ownmfa.api.CreateAppRequest</code>
 */
class CreateAppRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * App message to create.
     *
     * Generated from protobuf field <code>.ownmfa.api.App app = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     */
    protected $app = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type \Ownmfa\Api\App $app
     *           App message to create.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaAppIdentity::initOnce();
        parent::__construct($data);
    }

    /**
     * App message to create.
     *
     * Generated from protobuf field <code>.ownmfa.api.App app = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @return \Ownmfa\Api\App|null
     */
    public function getApp()
    {
        return $this->app;
    }

    public function hasApp()
    {
        return isset($this->app);
    }

    public function clearApp()
    {
        unset($this->app);
    }

    /**
     * App message to create.
     *
     * Generated from protobuf field <code>.ownmfa.api.App app = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @param \Ownmfa\Api\App $var
     * @return $this
     */
    public function setApp($var)
    {
        GPBUtil::checkMessage($var, \Ownmfa\Api\App::class);
        $this->app = $var;

        return $this;
    }

}

