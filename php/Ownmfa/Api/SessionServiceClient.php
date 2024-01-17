<?php
// GENERATED CODE -- DO NOT EDIT!

namespace Ownmfa\Api;

/**
 * SessionService contains functions to create sessions and keys.
 */
class SessionServiceClient extends \Grpc\BaseStub {

    /**
     * @param string $hostname hostname
     * @param array $opts channel options
     * @param \Grpc\Channel $channel (optional) re-use channel object
     */
    public function __construct($hostname, $opts, $channel = null) {
        parent::__construct($hostname, $opts, $channel);
    }

    /**
     * Log in a user. Login tokens are time-limited and accompanied by an expiration.
     * @param \Ownmfa\Api\LoginRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall
     */
    public function Login(\Ownmfa\Api\LoginRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.SessionService/Login',
        $argument,
        ['\Ownmfa\Api\LoginResponse', 'decode'],
        $metadata, $options);
    }

    /**
     * Create an API key. API keys are persistent and do not expire until revoked.
     * @param \Ownmfa\Api\CreateKeyRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall
     */
    public function CreateKey(\Ownmfa\Api\CreateKeyRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.SessionService/CreateKey',
        $argument,
        ['\Ownmfa\Api\CreateKeyResponse', 'decode'],
        $metadata, $options);
    }

    /**
     * Delete an API key by ID. API keys are persistent and do not expire until revoked.
     * @param \Ownmfa\Api\DeleteKeyRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall
     */
    public function DeleteKey(\Ownmfa\Api\DeleteKeyRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.SessionService/DeleteKey',
        $argument,
        ['\Google\Protobuf\GPBEmpty', 'decode'],
        $metadata, $options);
    }

    /**
     * List all API keys. API keys are persistent and do not expire until revoked.
     * @param \Ownmfa\Api\ListKeysRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall
     */
    public function ListKeys(\Ownmfa\Api\ListKeysRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.SessionService/ListKeys',
        $argument,
        ['\Ownmfa\Api\ListKeysResponse', 'decode'],
        $metadata, $options);
    }

}
