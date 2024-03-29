<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_event.proto

namespace Ownmfa\Api;

use UnexpectedValueException;

/**
 * EventStatus represents the status of an event.
 *
 * Protobuf type <code>ownmfa.api.EventStatus</code>
 */
class EventStatus
{
    /**
     * Event status is not specified.
     *
     * Generated from protobuf enum <code>EVENT_STATUS_UNSPECIFIED = 0;</code>
     */
    const EVENT_STATUS_UNSPECIFIED = 0;
    /**
     * Identity was successfully created.
     *
     * Generated from protobuf enum <code>IDENTITY_CREATED = 1;</code>
     */
    const IDENTITY_CREATED = 1;
    /**
     * Challenge was successfully sent.
     *
     * Generated from protobuf enum <code>CHALLENGE_SENT = 2;</code>
     */
    const CHALLENGE_SENT = 2;
    /**
     * Challenge was requested, but was not required by the identity's authentication method.
     *
     * Generated from protobuf enum <code>CHALLENGE_NOOP = 3;</code>
     */
    const CHALLENGE_NOOP = 3;
    /**
     * Challenge failed to send. The Event error field will be populated.
     *
     * Generated from protobuf enum <code>CHALLENGE_FAIL = 4;</code>
     */
    const CHALLENGE_FAIL = 4;
    /**
     * Identity was successfully activated.
     *
     * Generated from protobuf enum <code>ACTIVATE_SUCCESS = 5;</code>
     */
    const ACTIVATE_SUCCESS = 5;
    /**
     * Identity failed to activate. The Event error field will be populated.
     *
     * Generated from protobuf enum <code>ACTIVATE_FAIL = 6;</code>
     */
    const ACTIVATE_FAIL = 6;
    /**
     * Identity was successfully verified.
     *
     * Generated from protobuf enum <code>VERIFY_SUCCESS = 7;</code>
     */
    const VERIFY_SUCCESS = 7;
    /**
     * Identity failed to verify. The Event error field will be populated.
     *
     * Generated from protobuf enum <code>VERIFY_FAIL = 8;</code>
     */
    const VERIFY_FAIL = 8;
    /**
     * Identity was successfully deleted.
     *
     * Generated from protobuf enum <code>IDENTITY_DELETED = 9;</code>
     */
    const IDENTITY_DELETED = 9;

    private static $valueToName = [
        self::EVENT_STATUS_UNSPECIFIED => 'EVENT_STATUS_UNSPECIFIED',
        self::IDENTITY_CREATED => 'IDENTITY_CREATED',
        self::CHALLENGE_SENT => 'CHALLENGE_SENT',
        self::CHALLENGE_NOOP => 'CHALLENGE_NOOP',
        self::CHALLENGE_FAIL => 'CHALLENGE_FAIL',
        self::ACTIVATE_SUCCESS => 'ACTIVATE_SUCCESS',
        self::ACTIVATE_FAIL => 'ACTIVATE_FAIL',
        self::VERIFY_SUCCESS => 'VERIFY_SUCCESS',
        self::VERIFY_FAIL => 'VERIFY_FAIL',
        self::IDENTITY_DELETED => 'IDENTITY_DELETED',
    ];

    public static function name($value)
    {
        if (!isset(self::$valueToName[$value])) {
            throw new UnexpectedValueException(sprintf(
                    'Enum %s has no name defined for value %s', __CLASS__, $value));
        }
        return self::$valueToName[$value];
    }


    public static function value($name)
    {
        $const = __CLASS__ . '::' . strtoupper($name);
        if (!defined($const)) {
            throw new UnexpectedValueException(sprintf(
                    'Enum %s has no value defined for name %s', __CLASS__, $name));
        }
        return constant($const);
    }
}

