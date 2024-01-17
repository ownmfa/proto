<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_org.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Org represents an organization as stored in the database.
 *
 * Generated from protobuf message <code>ownmfa.api.Org</code>
 */
class Org extends \Google\Protobuf\Internal\Message
{
    /**
     * Organization ID (UUID).
     *
     * Generated from protobuf field <code>string id = 1 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $id = '';
    /**
     * Organization name.
     *
     * Generated from protobuf field <code>string name = 2 [(.validate.rules) = {</code>
     */
    protected $name = '';
    /**
     * Organization status.
     *
     * Generated from protobuf field <code>.ownmfa.api.Status status = 5 [(.validate.rules) = {</code>
     */
    protected $status = 0;
    /**
     * Organization plan.
     *
     * Generated from protobuf field <code>.ownmfa.api.Plan plan = 6 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $plan = 0;
    /**
     * Organization creation timestamp.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp created_at = 3 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $created_at = null;
    /**
     * Organization modification timestamp.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp updated_at = 4 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $updated_at = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $id
     *           Organization ID (UUID).
     *     @type string $name
     *           Organization name.
     *     @type int $status
     *           Organization status.
     *     @type int $plan
     *           Organization plan.
     *     @type \Google\Protobuf\Timestamp $created_at
     *           Organization creation timestamp.
     *     @type \Google\Protobuf\Timestamp $updated_at
     *           Organization modification timestamp.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaOrg::initOnce();
        parent::__construct($data);
    }

    /**
     * Organization ID (UUID).
     *
     * Generated from protobuf field <code>string id = 1 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Organization ID (UUID).
     *
     * Generated from protobuf field <code>string id = 1 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
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
     * Organization name.
     *
     * Generated from protobuf field <code>string name = 2 [(.validate.rules) = {</code>
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Organization name.
     *
     * Generated from protobuf field <code>string name = 2 [(.validate.rules) = {</code>
     * @param string $var
     * @return $this
     */
    public function setName($var)
    {
        GPBUtil::checkString($var, True);
        $this->name = $var;

        return $this;
    }

    /**
     * Organization status.
     *
     * Generated from protobuf field <code>.ownmfa.api.Status status = 5 [(.validate.rules) = {</code>
     * @return int
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Organization status.
     *
     * Generated from protobuf field <code>.ownmfa.api.Status status = 5 [(.validate.rules) = {</code>
     * @param int $var
     * @return $this
     */
    public function setStatus($var)
    {
        GPBUtil::checkEnum($var, \Ownmfa\Api\Status::class);
        $this->status = $var;

        return $this;
    }

    /**
     * Organization plan.
     *
     * Generated from protobuf field <code>.ownmfa.api.Plan plan = 6 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int
     */
    public function getPlan()
    {
        return $this->plan;
    }

    /**
     * Organization plan.
     *
     * Generated from protobuf field <code>.ownmfa.api.Plan plan = 6 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int $var
     * @return $this
     */
    public function setPlan($var)
    {
        GPBUtil::checkEnum($var, \Ownmfa\Api\Plan::class);
        $this->plan = $var;

        return $this;
    }

    /**
     * Organization creation timestamp.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp created_at = 3 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return \Google\Protobuf\Timestamp|null
     */
    public function getCreatedAt()
    {
        return $this->created_at;
    }

    public function hasCreatedAt()
    {
        return isset($this->created_at);
    }

    public function clearCreatedAt()
    {
        unset($this->created_at);
    }

    /**
     * Organization creation timestamp.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp created_at = 3 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param \Google\Protobuf\Timestamp $var
     * @return $this
     */
    public function setCreatedAt($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Timestamp::class);
        $this->created_at = $var;

        return $this;
    }

    /**
     * Organization modification timestamp.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp updated_at = 4 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return \Google\Protobuf\Timestamp|null
     */
    public function getUpdatedAt()
    {
        return $this->updated_at;
    }

    public function hasUpdatedAt()
    {
        return isset($this->updated_at);
    }

    public function clearUpdatedAt()
    {
        unset($this->updated_at);
    }

    /**
     * Organization modification timestamp.
     *
     * Generated from protobuf field <code>.google.protobuf.Timestamp updated_at = 4 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param \Google\Protobuf\Timestamp $var
     * @return $this
     */
    public function setUpdatedAt($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Timestamp::class);
        $this->updated_at = $var;

        return $this;
    }

}
