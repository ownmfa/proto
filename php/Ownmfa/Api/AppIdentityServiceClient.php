<?php
// GENERATED CODE -- DO NOT EDIT!

namespace Ownmfa\Api;

/**
 * AppIdentityService contains functions to query and modify applications and identities.
 */
class AppIdentityServiceClient extends \Grpc\BaseStub {

    /**
     * @param string $hostname hostname
     * @param array $opts channel options
     * @param \Grpc\Channel $channel (optional) re-use channel object
     */
    public function __construct($hostname, $opts, $channel = null) {
        parent::__construct($hostname, $opts, $channel);
    }

    /**
     * Create an application. Applications contain external user identities and common settings for authentication methods.
     * @param \Ownmfa\Api\CreateAppRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\App>
     */
    public function CreateApp(\Ownmfa\Api\CreateAppRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/CreateApp',
        $argument,
        ['\Ownmfa\Api\App', 'decode'],
        $metadata, $options);
    }

    /**
     * Create an identity. Identities are used to challenge, activate, and verify external users.
     * @param \Ownmfa\Api\CreateIdentityRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\CreateIdentityResponse>
     */
    public function CreateIdentity(\Ownmfa\Api\CreateIdentityRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/CreateIdentity',
        $argument,
        ['\Ownmfa\Api\CreateIdentityResponse', 'decode'],
        $metadata, $options);
    }

    /**
     * Activate an identity following a challenge.
     * @param \Ownmfa\Api\ActivateIdentityRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\Identity>
     */
    public function ActivateIdentity(\Ownmfa\Api\ActivateIdentityRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/ActivateIdentity',
        $argument,
        ['\Ownmfa\Api\Identity', 'decode'],
        $metadata, $options);
    }

    /**
     * Issue a challenge to an identity.
     * @param \Ownmfa\Api\ChallengeIdentityRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Google\Protobuf\GPBEmpty>
     */
    public function ChallengeIdentity(\Ownmfa\Api\ChallengeIdentityRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/ChallengeIdentity',
        $argument,
        ['\Google\Protobuf\GPBEmpty', 'decode'],
        $metadata, $options);
    }

    /**
     * Verify an identity following a challenge.
     * @param \Ownmfa\Api\VerifyIdentityRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Google\Protobuf\GPBEmpty>
     */
    public function VerifyIdentity(\Ownmfa\Api\VerifyIdentityRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/VerifyIdentity',
        $argument,
        ['\Google\Protobuf\GPBEmpty', 'decode'],
        $metadata, $options);
    }

    /**
     * Get an application by ID. Applications contain external user identities and common settings for authentication methods.
     * @param \Ownmfa\Api\GetAppRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\App>
     */
    public function GetApp(\Ownmfa\Api\GetAppRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/GetApp',
        $argument,
        ['\Ownmfa\Api\App', 'decode'],
        $metadata, $options);
    }

    /**
     * Get an identity by ID. Identities are used to challenge, activate, and verify external users.
     * @param \Ownmfa\Api\GetIdentityRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\Identity>
     */
    public function GetIdentity(\Ownmfa\Api\GetIdentityRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/GetIdentity',
        $argument,
        ['\Ownmfa\Api\Identity', 'decode'],
        $metadata, $options);
    }

    /**
     * Update an application. Applications contain external user identities and common settings for authentication methods.
     * @param \Ownmfa\Api\UpdateAppRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\App>
     */
    public function UpdateApp(\Ownmfa\Api\UpdateAppRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/UpdateApp',
        $argument,
        ['\Ownmfa\Api\App', 'decode'],
        $metadata, $options);
    }

    /**
     * Delete an application by ID. Applications contain external user identities and common settings for authentication methods.
     * @param \Ownmfa\Api\DeleteAppRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Google\Protobuf\GPBEmpty>
     */
    public function DeleteApp(\Ownmfa\Api\DeleteAppRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/DeleteApp',
        $argument,
        ['\Google\Protobuf\GPBEmpty', 'decode'],
        $metadata, $options);
    }

    /**
     * Delete an identity by ID. Identities are used to challenge, activate, and verify external users.
     * @param \Ownmfa\Api\DeleteIdentityRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Google\Protobuf\GPBEmpty>
     */
    public function DeleteIdentity(\Ownmfa\Api\DeleteIdentityRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/DeleteIdentity',
        $argument,
        ['\Google\Protobuf\GPBEmpty', 'decode'],
        $metadata, $options);
    }

    /**
     * List all applications. Applications contain external user identities and common settings for authentication methods.
     * @param \Ownmfa\Api\ListAppsRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\ListAppsResponse>
     */
    public function ListApps(\Ownmfa\Api\ListAppsRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/ListApps',
        $argument,
        ['\Ownmfa\Api\ListAppsResponse', 'decode'],
        $metadata, $options);
    }

    /**
     * List identities. Identities are used to challenge, activate, and verify external users.
     * @param \Ownmfa\Api\ListIdentitiesRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\ListIdentitiesResponse>
     */
    public function ListIdentities(\Ownmfa\Api\ListIdentitiesRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.AppIdentityService/ListIdentities',
        $argument,
        ['\Ownmfa\Api\ListIdentitiesResponse', 'decode'],
        $metadata, $options);
    }

}
