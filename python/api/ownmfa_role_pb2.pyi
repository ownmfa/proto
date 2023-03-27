from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from typing import ClassVar as _ClassVar

ADMIN: Role
AUTHENTICATOR: Role
DESCRIPTOR: _descriptor.FileDescriptor
ROLE_UNSPECIFIED: Role
SYS_ADMIN: Role
VIEWER: Role

class Role(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = []
