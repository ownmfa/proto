<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/ownmfa_session.proto

namespace Ownmfa\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * ListKeysRequest is sent to list API keys.
 *
 * Generated from protobuf message <code>ownmfa.api.ListKeysRequest</code>
 */
class ListKeysRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * Number of API keys to retrieve in a single page. Defaults to 50 if not specified, with a maximum of 250.
     *
     * Generated from protobuf field <code>int32 page_size = 1 [(.validate.rules) = {</code>
     */
    protected $page_size = 0;
    /**
     * Token of the page to retrieve. If not specified, the first page of results will be returned. To request the next page of results, use next_page_token from the previous response.
     *
     * Generated from protobuf field <code>string page_token = 2;</code>
     */
    protected $page_token = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type int $page_size
     *           Number of API keys to retrieve in a single page. Defaults to 50 if not specified, with a maximum of 250.
     *     @type string $page_token
     *           Token of the page to retrieve. If not specified, the first page of results will be returned. To request the next page of results, use next_page_token from the previous response.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\OwnmfaSession::initOnce();
        parent::__construct($data);
    }

    /**
     * Number of API keys to retrieve in a single page. Defaults to 50 if not specified, with a maximum of 250.
     *
     * Generated from protobuf field <code>int32 page_size = 1 [(.validate.rules) = {</code>
     * @return int
     */
    public function getPageSize()
    {
        return $this->page_size;
    }

    /**
     * Number of API keys to retrieve in a single page. Defaults to 50 if not specified, with a maximum of 250.
     *
     * Generated from protobuf field <code>int32 page_size = 1 [(.validate.rules) = {</code>
     * @param int $var
     * @return $this
     */
    public function setPageSize($var)
    {
        GPBUtil::checkInt32($var);
        $this->page_size = $var;

        return $this;
    }

    /**
     * Token of the page to retrieve. If not specified, the first page of results will be returned. To request the next page of results, use next_page_token from the previous response.
     *
     * Generated from protobuf field <code>string page_token = 2;</code>
     * @return string
     */
    public function getPageToken()
    {
        return $this->page_token;
    }

    /**
     * Token of the page to retrieve. If not specified, the first page of results will be returned. To request the next page of results, use next_page_token from the previous response.
     *
     * Generated from protobuf field <code>string page_token = 2;</code>
     * @param string $var
     * @return $this
     */
    public function setPageToken($var)
    {
        GPBUtil::checkString($var, True);
        $this->page_token = $var;

        return $this;
    }

}

