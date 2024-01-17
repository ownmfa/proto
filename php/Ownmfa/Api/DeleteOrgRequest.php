<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_org.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * DeleteOrgRequest is sent to delete an organization.
 *
 * Generated from protobuf message <code>ownmfa.api.DeleteOrgRequest</code>
 */
class DeleteOrgRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * Organization ID (UUID) to delete.
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
     *           Organization ID (UUID) to delete.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaOrg::initOnce();
        parent::__construct($data);
    }

    /**
     * Organization ID (UUID) to delete.
     *
     * Generated from protobuf field <code>string id = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Organization ID (UUID) to delete.
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

