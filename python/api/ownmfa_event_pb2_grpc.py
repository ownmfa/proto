# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

from api import ownmfa_event_pb2 as api_dot_ownmfa__event__pb2


class EventServiceStub(object):
    """EventService contains functions to query identity events.
    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.ListEvents = channel.unary_unary(
                '/ownmfa.api.EventService/ListEvents',
                request_serializer=api_dot_ownmfa__event__pb2.ListEventsRequest.SerializeToString,
                response_deserializer=api_dot_ownmfa__event__pb2.ListEventsResponse.FromString,
                )
        self.LatestEvents = channel.unary_unary(
                '/ownmfa.api.EventService/LatestEvents',
                request_serializer=api_dot_ownmfa__event__pb2.LatestEventsRequest.SerializeToString,
                response_deserializer=api_dot_ownmfa__event__pb2.LatestEventsResponse.FromString,
                )


class EventServiceServicer(object):
    """EventService contains functions to query identity events.
    """

    def ListEvents(self, request, context):
        """List all events for an identity in an [end, start) time range, in descending timestamp order. Events are generated by identity actions.
        """
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def LatestEvents(self, request, context):
        """List the latest event for each of an organization's identities. Events are generated by identity actions.
        """
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_EventServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'ListEvents': grpc.unary_unary_rpc_method_handler(
                    servicer.ListEvents,
                    request_deserializer=api_dot_ownmfa__event__pb2.ListEventsRequest.FromString,
                    response_serializer=api_dot_ownmfa__event__pb2.ListEventsResponse.SerializeToString,
            ),
            'LatestEvents': grpc.unary_unary_rpc_method_handler(
                    servicer.LatestEvents,
                    request_deserializer=api_dot_ownmfa__event__pb2.LatestEventsRequest.FromString,
                    response_serializer=api_dot_ownmfa__event__pb2.LatestEventsResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'ownmfa.api.EventService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class EventService(object):
    """EventService contains functions to query identity events.
    """

    @staticmethod
    def ListEvents(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/ownmfa.api.EventService/ListEvents',
            api_dot_ownmfa__event__pb2.ListEventsRequest.SerializeToString,
            api_dot_ownmfa__event__pb2.ListEventsResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)

    @staticmethod
    def LatestEvents(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/ownmfa.api.EventService/LatestEvents',
            api_dot_ownmfa__event__pb2.LatestEventsRequest.SerializeToString,
            api_dot_ownmfa__event__pb2.LatestEventsResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
