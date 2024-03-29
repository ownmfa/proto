<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_event.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * LatestEventsResponse is sent in response to an organization latest list.
 *
 * Generated from protobuf message <code>ownmfa.api.LatestEventsResponse</code>
 */
class LatestEventsResponse extends \Google\Protobuf\Internal\Message
{
    /**
     * Event array, ordered by descending created_at timestamp.
     *
     * Generated from protobuf field <code>repeated .ownmfa.api.Event events = 1;</code>
     */
    private $events;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type array<\Ownmfa\Api\Event>|\Google\Protobuf\Internal\RepeatedField $events
     *           Event array, ordered by descending created_at timestamp.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaEvent::initOnce();
        parent::__construct($data);
    }

    /**
     * Event array, ordered by descending created_at timestamp.
     *
     * Generated from protobuf field <code>repeated .ownmfa.api.Event events = 1;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getEvents()
    {
        return $this->events;
    }

    /**
     * Event array, ordered by descending created_at timestamp.
     *
     * Generated from protobuf field <code>repeated .ownmfa.api.Event events = 1;</code>
     * @param array<\Ownmfa\Api\Event>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setEvents($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Ownmfa\Api\Event::class);
        $this->events = $arr;

        return $this;
    }

}

