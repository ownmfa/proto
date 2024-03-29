<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_role.proto

namespace Ownmfa\Api;

use UnexpectedValueException;

/**
 * Role represents the role of a user.
 *
 * Protobuf type <code>ownmfa.api.Role</code>
 */
class Role
{
    /**
     * Role is not specified.
     *
     * Generated from protobuf enum <code>ROLE_UNSPECIFIED = 0;</code>
     */
    const ROLE_UNSPECIFIED = 0;
    /**
     * Viewers can only read resources in their organization, but can update their own user.
     *
     * Generated from protobuf enum <code>VIEWER = 4;</code>
     */
    const VIEWER = 4;
    /**
     * Authenticators can read and modify resources in their organization, but can only update their own user.
     *
     * Generated from protobuf enum <code>AUTHENTICATOR = 8;</code>
     */
    const AUTHENTICATOR = 8;
    /**
     * Admins can read and modify anything in their organization, including creating users of an equal or lesser role.
     *
     * Generated from protobuf enum <code>ADMIN = 12;</code>
     */
    const ADMIN = 12;
    /**
     * System admins can create organizations and modify anything in their organization.
     *
     * Generated from protobuf enum <code>SYS_ADMIN = 15;</code>
     */
    const SYS_ADMIN = 15;

    private static $valueToName = [
        self::ROLE_UNSPECIFIED => 'ROLE_UNSPECIFIED',
        self::VIEWER => 'VIEWER',
        self::AUTHENTICATOR => 'AUTHENTICATOR',
        self::ADMIN => 'ADMIN',
        self::SYS_ADMIN => 'SYS_ADMIN',
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

