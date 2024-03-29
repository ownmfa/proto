<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_app_identity.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * EmailMethod configures an email passcode method.
 *
 * Generated from protobuf message <code>ownmfa.api.EmailMethod</code>
 */
class EmailMethod extends \Google\Protobuf\Internal\Message
{
    /**
     * Email address.
     *
     * Generated from protobuf field <code>string email = 1 [(.validate.rules) = {</code>
     */
    protected $email = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $email
     *           Email address.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaAppIdentity::initOnce();
        parent::__construct($data);
    }

    /**
     * Email address.
     *
     * Generated from protobuf field <code>string email = 1 [(.validate.rules) = {</code>
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Email address.
     *
     * Generated from protobuf field <code>string email = 1 [(.validate.rules) = {</code>
     * @param string $var
     * @return $this
     */
    public function setEmail($var)
    {
        GPBUtil::checkString($var, True);
        $this->email = $var;

        return $this;
    }

}

