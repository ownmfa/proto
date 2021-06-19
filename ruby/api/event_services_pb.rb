# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: api/event.proto for package 'ownmfa.api'

require 'grpc'
require 'api/event_pb'

module Ownmfa
  module Api
    module EventService
      # EventService contains functions to query identity events.
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'ownmfa.api.EventService'

        # List all events for an identity in an [end, start) time range, in descending timestamp order. Events are generated by identity actions.
        rpc :ListEvents, ::Ownmfa::Api::ListEventsRequest, ::Ownmfa::Api::ListEventsResponse
        # List the latest event for each of an organization's identities. Events are generated by identity actions.
        rpc :LatestEvents, ::Ownmfa::Api::LatestEventsRequest, ::Ownmfa::Api::LatestEventsResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
