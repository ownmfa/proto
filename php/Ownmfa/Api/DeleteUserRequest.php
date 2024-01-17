<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_user.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * DeleteUserRequest is sent to delete a user.
 *
 * Generated from protobuf message <code>ownmfa.api.DeleteUserRequest</code>
 */
class DeleteUserRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * User ID (UUID) to delete.
     *
     * Generated from protobuf field <code>string id = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     */
    protected $id = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $id
     *           User ID (UUID) to delete.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaUser::initOnce();
        parent::__construct($data);
    }

    /**
     * User ID (UUID) to delete.
     *
     * Generated from protobuf field <code>string id = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * User ID (UUID) to delete.
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

}

