<?php
// GENERATED CODE -- DO NOT EDIT!

namespace Ownmfa\Api;

/**
 * UserService contains functions to query and modify users.
 */
class UserServiceClient extends \Grpc\BaseStub {

    /**
     * @param string $hostname hostname
     * @param array $opts channel options
     * @param \Grpc\Channel $channel (optional) re-use channel object
     */
    public function __construct($hostname, $opts, $channel = null) {
        parent::__construct($hostname, $opts, $channel);
    }

    /**
     * Create a user. Users can log in and use the Hermes API and OwnMFA website based on the limits of their role.
     * @param \Ownmfa\Api\CreateUserRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\User>
     */
    public function CreateUser(\Ownmfa\Api\CreateUserRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.UserService/CreateUser',
        $argument,
        ['\Ownmfa\Api\User', 'decode'],
        $metadata, $options);
    }

    /**
     * Get a user by ID. Users can log in and use the Hermes API and OwnMFA website based on the limits of their role.
     * @param \Ownmfa\Api\GetUserRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\User>
     */
    public function GetUser(\Ownmfa\Api\GetUserRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.UserService/GetUser',
        $argument,
        ['\Ownmfa\Api\User', 'decode'],
        $metadata, $options);
    }

    /**
     * Update a user. Users can log in and use the Hermes API and OwnMFA website based on the limits of their role.
     * @param \Ownmfa\Api\UpdateUserRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\User>
     */
    public function UpdateUser(\Ownmfa\Api\UpdateUserRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.UserService/UpdateUser',
        $argument,
        ['\Ownmfa\Api\User', 'decode'],
        $metadata, $options);
    }

    /**
     * Update a user's password. Passwords are checked against NIST password guidelines.
     * @param \Ownmfa\Api\UpdateUserPasswordRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Google\Protobuf\GPBEmpty>
     */
    public function UpdateUserPassword(\Ownmfa\Api\UpdateUserPasswordRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.UserService/UpdateUserPassword',
        $argument,
        ['\Google\Protobuf\GPBEmpty', 'decode'],
        $metadata, $options);
    }

    /**
     * Delete a user by ID. Users can log in and use the Hermes API and OwnMFA website based on the limits of their role.
     * @param \Ownmfa\Api\DeleteUserRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Google\Protobuf\GPBEmpty>
     */
    public function DeleteUser(\Ownmfa\Api\DeleteUserRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.UserService/DeleteUser',
        $argument,
        ['\Google\Protobuf\GPBEmpty', 'decode'],
        $metadata, $options);
    }

    /**
     * List users. Users can log in and use the Hermes API and OwnMFA website based on the limits of their role.
     * @param \Ownmfa\Api\ListUsersRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\Ownmfa\Api\ListUsersResponse>
     */
    public function ListUsers(\Ownmfa\Api\ListUsersRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/ownmfa.api.UserService/ListUsers',
        $argument,
        ['\Ownmfa\Api\ListUsersResponse', 'decode'],
        $metadata, $options);
    }

}
