<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_org.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * UpdateOrgRequest is sent to update an organization.
 *
 * Generated from protobuf message <code>ownmfa.api.UpdateOrgRequest</code>
 */
class UpdateOrgRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * Org message to update.
     *
     * Generated from protobuf field <code>.ownmfa.api.Org org = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     */
    protected $org = null;
    /**
     * Fields to update. Automatically populated by a PATCH request. If not present, a full resource update is performed.
     *
     * Generated from protobuf field <code>.google.protobuf.FieldMask update_mask = 2;</code>
     */
    protected $update_mask = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type \Ownmfa\Api\Org $org
     *           Org message to update.
     *     @type \Google\Protobuf\FieldMask $update_mask
     *           Fields to update. Automatically populated by a PATCH request. If not present, a full resource update is performed.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaOrg::initOnce();
        parent::__construct($data);
    }

    /**
     * Org message to update.
     *
     * Generated from protobuf field <code>.ownmfa.api.Org org = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @return \Ownmfa\Api\Org|null
     */
    public function getOrg()
    {
        return $this->org;
    }

    public function hasOrg()
    {
        return isset($this->org);
    }

    public function clearOrg()
    {
        unset($this->org);
    }

    /**
     * Org message to update.
     *
     * Generated from protobuf field <code>.ownmfa.api.Org org = 1 [(.google.api.field_behavior) = REQUIRED, (.validate.rules) = {</code>
     * @param \Ownmfa\Api\Org $var
     * @return $this
     */
    public function setOrg($var)
    {
        GPBUtil::checkMessage($var, \Ownmfa\Api\Org::class);
        $this->org = $var;

        return $this;
    }

    /**
     * Fields to update. Automatically populated by a PATCH request. If not present, a full resource update is performed.
     *
     * Generated from protobuf field <code>.google.protobuf.FieldMask update_mask = 2;</code>
     * @return \Google\Protobuf\FieldMask|null
     */
    public function getUpdateMask()
    {
        return $this->update_mask;
    }

    public function hasUpdateMask()
    {
        return isset($this->update_mask);
    }

    public function clearUpdateMask()
    {
        unset($this->update_mask);
    }

    /**
     * Fields to update. Automatically populated by a PATCH request. If not present, a full resource update is performed.
     *
     * Generated from protobuf field <code>.google.protobuf.FieldMask update_mask = 2;</code>
     * @param \Google\Protobuf\FieldMask $var
     * @return $this
     */
    public function setUpdateMask($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\FieldMask::class);
        $this->update_mask = $var;

        return $this;
    }

}

