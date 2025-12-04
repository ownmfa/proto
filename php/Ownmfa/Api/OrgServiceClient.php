<?php
// GENERATED CODE -- DO NOT EDIT!

namespace Ownmfa\Api;

/**
 * OrgService contains functions to query and modify organizations.
 */
class OrgServiceClient extends \Grpc\BaseStub {

    /**
     * @param string $hostname hostname
     * @param array $opts channel options
     * @param \Grpc\Channel $channel (optional) re-use channel object
     */
    public function __construct($hostname, $opts, $channel = null) {
        parent::__construct($hostname, $opts, $channel);
    }

    /**
     * Create an organization. An organization is the top level resource and contains users, applications, and derived resources.
     * @param \Ownmfa\Api\CreateOrgRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\Org>
     */
    public function CreateOrg(\Ownmfa\Api\CreateOrgRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.OrgService/CreateOrg',
        $argument,
        ['\Ownmfa\Api\Org', 'decode'],
        $metadata, $options);
    }

    /**
     * Get an organization by ID. An organization is the top level resource and contains users, applications, and derived resources.
     * @param \Ownmfa\Api\GetOrgRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\Org>
     */
    public function GetOrg(\Ownmfa\Api\GetOrgRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.OrgService/GetOrg',
        $argument,
        ['\Ownmfa\Api\Org', 'decode'],
        $metadata, $options);
    }

    /**
     * Update an organization. An organization is the top level resource and contains users, applications, and derived resources.
     * @param \Ownmfa\Api\UpdateOrgRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\Org>
     */
    public function UpdateOrg(\Ownmfa\Api\UpdateOrgRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.OrgService/UpdateOrg',
        $argument,
        ['\Ownmfa\Api\Org', 'decode'],
        $metadata, $options);
    }

    /**
     * Delete an organization by ID. An organization is the top level resource and contains users, applications, and derived resources.
     * @param \Ownmfa\Api\DeleteOrgRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Google\Protobuf\GPBEmpty>
     */
    public function DeleteOrg(\Ownmfa\Api\DeleteOrgRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.OrgService/DeleteOrg',
        $argument,
        ['\Google\Protobuf\GPBEmpty', 'decode'],
        $metadata, $options);
    }

    /**
     * List all organizations. An organization is the top level resource and contains users, applications, and derived resources.
     * @param \Ownmfa\Api\ListOrgsRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\ListOrgsResponse>
     */
    public function ListOrgs(\Ownmfa\Api\ListOrgsRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.OrgService/ListOrgs',
        $argument,
        ['\Ownmfa\Api\ListOrgsResponse', 'decode'],
        $metadata, $options);
    }

}
