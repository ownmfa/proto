from google.protobuf import empty_pb2 as _empty_pb2
from google.protobuf import timestamp_pb2 as _timestamp_pb2
from google.protobuf import field_mask_pb2 as _field_mask_pb2
from google.api import annotations_pb2 as _annotations_pb2
from google.api import field_behavior_pb2 as _field_behavior_pb2
from protoc_gen_openapiv2.options import annotations_pb2 as _annotations_pb2_1
from validate import validate_pb2 as _validate_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Iterable as _Iterable, Mapping as _Mapping, Optional as _Optional, Union as _Union

ACTIVATED: IdentityStatus
DESCRIPTOR: _descriptor.FileDescriptor
SHA1: Hash
SHA256: Hash
SHA512: Hash
UNVERIFIED: IdentityStatus

class ActivateIdentityRequest(_message.Message):
    __slots__ = ["app_id", "id", "passcode"]
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    ID_FIELD_NUMBER: _ClassVar[int]
    PASSCODE_FIELD_NUMBER: _ClassVar[int]
    app_id: str
    id: str
    passcode: str
    def __init__(self, id: _Optional[str] = ..., app_id: _Optional[str] = ..., passcode: _Optional[str] = ...) -> None: ...

class App(_message.Message):
    __slots__ = ["created_at", "display_name", "email", "html_body_template", "id", "name", "org_id", "pushover_key", "subject_template", "text_body_template", "updated_at"]
    CREATED_AT_FIELD_NUMBER: _ClassVar[int]
    DISPLAY_NAME_FIELD_NUMBER: _ClassVar[int]
    EMAIL_FIELD_NUMBER: _ClassVar[int]
    HTML_BODY_TEMPLATE_FIELD_NUMBER: _ClassVar[int]
    ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    ORG_ID_FIELD_NUMBER: _ClassVar[int]
    PUSHOVER_KEY_FIELD_NUMBER: _ClassVar[int]
    SUBJECT_TEMPLATE_FIELD_NUMBER: _ClassVar[int]
    TEXT_BODY_TEMPLATE_FIELD_NUMBER: _ClassVar[int]
    UPDATED_AT_FIELD_NUMBER: _ClassVar[int]
    created_at: _timestamp_pb2.Timestamp
    display_name: str
    email: str
    html_body_template: bytes
    id: str
    name: str
    org_id: str
    pushover_key: str
    subject_template: str
    text_body_template: str
    updated_at: _timestamp_pb2.Timestamp
    def __init__(self, id: _Optional[str] = ..., org_id: _Optional[str] = ..., name: _Optional[str] = ..., display_name: _Optional[str] = ..., email: _Optional[str] = ..., pushover_key: _Optional[str] = ..., subject_template: _Optional[str] = ..., text_body_template: _Optional[str] = ..., html_body_template: _Optional[bytes] = ..., created_at: _Optional[_Union[_timestamp_pb2.Timestamp, _Mapping]] = ..., updated_at: _Optional[_Union[_timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class AppleiOSTOTPMethod(_message.Message):
    __slots__ = []
    def __init__(self) -> None: ...

class BackupsCodesMethod(_message.Message):
    __slots__ = ["passcodes"]
    PASSCODES_FIELD_NUMBER: _ClassVar[int]
    passcodes: int
    def __init__(self, passcodes: _Optional[int] = ...) -> None: ...

class ChallengeIdentityRequest(_message.Message):
    __slots__ = ["app_id", "id"]
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    ID_FIELD_NUMBER: _ClassVar[int]
    app_id: str
    id: str
    def __init__(self, id: _Optional[str] = ..., app_id: _Optional[str] = ...) -> None: ...

class CreateAppRequest(_message.Message):
    __slots__ = ["app"]
    APP_FIELD_NUMBER: _ClassVar[int]
    app: App
    def __init__(self, app: _Optional[_Union[App, _Mapping]] = ...) -> None: ...

class CreateIdentityRequest(_message.Message):
    __slots__ = ["identity"]
    IDENTITY_FIELD_NUMBER: _ClassVar[int]
    identity: Identity
    def __init__(self, identity: _Optional[_Union[Identity, _Mapping]] = ...) -> None: ...

class CreateIdentityResponse(_message.Message):
    __slots__ = ["identity", "passcodes", "qr", "secret"]
    IDENTITY_FIELD_NUMBER: _ClassVar[int]
    PASSCODES_FIELD_NUMBER: _ClassVar[int]
    QR_FIELD_NUMBER: _ClassVar[int]
    SECRET_FIELD_NUMBER: _ClassVar[int]
    identity: Identity
    passcodes: _containers.RepeatedScalarFieldContainer[str]
    qr: bytes
    secret: str
    def __init__(self, identity: _Optional[_Union[Identity, _Mapping]] = ..., secret: _Optional[str] = ..., qr: _Optional[bytes] = ..., passcodes: _Optional[_Iterable[str]] = ...) -> None: ...

class DeleteAppRequest(_message.Message):
    __slots__ = ["id"]
    ID_FIELD_NUMBER: _ClassVar[int]
    id: str
    def __init__(self, id: _Optional[str] = ...) -> None: ...

class DeleteIdentityRequest(_message.Message):
    __slots__ = ["app_id", "id"]
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    ID_FIELD_NUMBER: _ClassVar[int]
    app_id: str
    id: str
    def __init__(self, id: _Optional[str] = ..., app_id: _Optional[str] = ...) -> None: ...

class EmailMethod(_message.Message):
    __slots__ = ["email"]
    EMAIL_FIELD_NUMBER: _ClassVar[int]
    email: str
    def __init__(self, email: _Optional[str] = ...) -> None: ...

class GetAppRequest(_message.Message):
    __slots__ = ["id"]
    ID_FIELD_NUMBER: _ClassVar[int]
    id: str
    def __init__(self, id: _Optional[str] = ...) -> None: ...

class GetIdentityRequest(_message.Message):
    __slots__ = ["app_id", "id"]
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    ID_FIELD_NUMBER: _ClassVar[int]
    app_id: str
    id: str
    def __init__(self, id: _Optional[str] = ..., app_id: _Optional[str] = ...) -> None: ...

class GoogleAuthHOTPMethod(_message.Message):
    __slots__ = ["account_name"]
    ACCOUNT_NAME_FIELD_NUMBER: _ClassVar[int]
    account_name: str
    def __init__(self, account_name: _Optional[str] = ...) -> None: ...

class GoogleAuthTOTPMethod(_message.Message):
    __slots__ = ["account_name"]
    ACCOUNT_NAME_FIELD_NUMBER: _ClassVar[int]
    account_name: str
    def __init__(self, account_name: _Optional[str] = ...) -> None: ...

class HardwareHOTPMethod(_message.Message):
    __slots__ = ["counter", "digits", "hash", "secret"]
    COUNTER_FIELD_NUMBER: _ClassVar[int]
    DIGITS_FIELD_NUMBER: _ClassVar[int]
    HASH_FIELD_NUMBER: _ClassVar[int]
    SECRET_FIELD_NUMBER: _ClassVar[int]
    counter: int
    digits: int
    hash: Hash
    secret: bytes
    def __init__(self, hash: _Optional[_Union[Hash, str]] = ..., digits: _Optional[int] = ..., counter: _Optional[int] = ..., secret: _Optional[bytes] = ...) -> None: ...

class HardwareTOTPMethod(_message.Message):
    __slots__ = ["digits", "hash", "secret"]
    DIGITS_FIELD_NUMBER: _ClassVar[int]
    HASH_FIELD_NUMBER: _ClassVar[int]
    SECRET_FIELD_NUMBER: _ClassVar[int]
    digits: int
    hash: Hash
    secret: bytes
    def __init__(self, hash: _Optional[_Union[Hash, str]] = ..., digits: _Optional[int] = ..., secret: _Optional[bytes] = ...) -> None: ...

class Identity(_message.Message):
    __slots__ = ["app_id", "apple_ios_totp_method", "backup_codes_method", "comment", "created_at", "email_method", "google_auth_hotp_method", "google_auth_totp_method", "hardware_hotp_method", "hardware_totp_method", "id", "org_id", "pushover_method", "security_questions_method", "sms_method", "software_hotp_method", "software_totp_method", "status", "updated_at"]
    APPLE_IOS_TOTP_METHOD_FIELD_NUMBER: _ClassVar[int]
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    BACKUP_CODES_METHOD_FIELD_NUMBER: _ClassVar[int]
    COMMENT_FIELD_NUMBER: _ClassVar[int]
    CREATED_AT_FIELD_NUMBER: _ClassVar[int]
    EMAIL_METHOD_FIELD_NUMBER: _ClassVar[int]
    GOOGLE_AUTH_HOTP_METHOD_FIELD_NUMBER: _ClassVar[int]
    GOOGLE_AUTH_TOTP_METHOD_FIELD_NUMBER: _ClassVar[int]
    HARDWARE_HOTP_METHOD_FIELD_NUMBER: _ClassVar[int]
    HARDWARE_TOTP_METHOD_FIELD_NUMBER: _ClassVar[int]
    ID_FIELD_NUMBER: _ClassVar[int]
    ORG_ID_FIELD_NUMBER: _ClassVar[int]
    PUSHOVER_METHOD_FIELD_NUMBER: _ClassVar[int]
    SECURITY_QUESTIONS_METHOD_FIELD_NUMBER: _ClassVar[int]
    SMS_METHOD_FIELD_NUMBER: _ClassVar[int]
    SOFTWARE_HOTP_METHOD_FIELD_NUMBER: _ClassVar[int]
    SOFTWARE_TOTP_METHOD_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    UPDATED_AT_FIELD_NUMBER: _ClassVar[int]
    app_id: str
    apple_ios_totp_method: AppleiOSTOTPMethod
    backup_codes_method: BackupsCodesMethod
    comment: str
    created_at: _timestamp_pb2.Timestamp
    email_method: EmailMethod
    google_auth_hotp_method: GoogleAuthHOTPMethod
    google_auth_totp_method: GoogleAuthTOTPMethod
    hardware_hotp_method: HardwareHOTPMethod
    hardware_totp_method: HardwareTOTPMethod
    id: str
    org_id: str
    pushover_method: PushoverMethod
    security_questions_method: SecurityQuestionsMethod
    sms_method: SMSMethod
    software_hotp_method: SoftwareHOTPMethod
    software_totp_method: SoftwareTOTPMethod
    status: IdentityStatus
    updated_at: _timestamp_pb2.Timestamp
    def __init__(self, id: _Optional[str] = ..., org_id: _Optional[str] = ..., app_id: _Optional[str] = ..., comment: _Optional[str] = ..., status: _Optional[_Union[IdentityStatus, str]] = ..., software_hotp_method: _Optional[_Union[SoftwareHOTPMethod, _Mapping]] = ..., software_totp_method: _Optional[_Union[SoftwareTOTPMethod, _Mapping]] = ..., google_auth_hotp_method: _Optional[_Union[GoogleAuthHOTPMethod, _Mapping]] = ..., google_auth_totp_method: _Optional[_Union[GoogleAuthTOTPMethod, _Mapping]] = ..., apple_ios_totp_method: _Optional[_Union[AppleiOSTOTPMethod, _Mapping]] = ..., hardware_hotp_method: _Optional[_Union[HardwareHOTPMethod, _Mapping]] = ..., hardware_totp_method: _Optional[_Union[HardwareTOTPMethod, _Mapping]] = ..., sms_method: _Optional[_Union[SMSMethod, _Mapping]] = ..., pushover_method: _Optional[_Union[PushoverMethod, _Mapping]] = ..., email_method: _Optional[_Union[EmailMethod, _Mapping]] = ..., backup_codes_method: _Optional[_Union[BackupsCodesMethod, _Mapping]] = ..., security_questions_method: _Optional[_Union[SecurityQuestionsMethod, _Mapping]] = ..., created_at: _Optional[_Union[_timestamp_pb2.Timestamp, _Mapping]] = ..., updated_at: _Optional[_Union[_timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ListAppsRequest(_message.Message):
    __slots__ = ["page_size", "page_token"]
    PAGE_SIZE_FIELD_NUMBER: _ClassVar[int]
    PAGE_TOKEN_FIELD_NUMBER: _ClassVar[int]
    page_size: int
    page_token: str
    def __init__(self, page_size: _Optional[int] = ..., page_token: _Optional[str] = ...) -> None: ...

class ListAppsResponse(_message.Message):
    __slots__ = ["apps", "next_page_token", "total_size"]
    APPS_FIELD_NUMBER: _ClassVar[int]
    NEXT_PAGE_TOKEN_FIELD_NUMBER: _ClassVar[int]
    TOTAL_SIZE_FIELD_NUMBER: _ClassVar[int]
    apps: _containers.RepeatedCompositeFieldContainer[App]
    next_page_token: str
    total_size: int
    def __init__(self, apps: _Optional[_Iterable[_Union[App, _Mapping]]] = ..., next_page_token: _Optional[str] = ..., total_size: _Optional[int] = ...) -> None: ...

class ListIdentitiesRequest(_message.Message):
    __slots__ = ["app_id", "page_size", "page_token"]
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    PAGE_SIZE_FIELD_NUMBER: _ClassVar[int]
    PAGE_TOKEN_FIELD_NUMBER: _ClassVar[int]
    app_id: str
    page_size: int
    page_token: str
    def __init__(self, page_size: _Optional[int] = ..., page_token: _Optional[str] = ..., app_id: _Optional[str] = ...) -> None: ...

class ListIdentitiesResponse(_message.Message):
    __slots__ = ["identities", "next_page_token", "total_size"]
    IDENTITIES_FIELD_NUMBER: _ClassVar[int]
    NEXT_PAGE_TOKEN_FIELD_NUMBER: _ClassVar[int]
    TOTAL_SIZE_FIELD_NUMBER: _ClassVar[int]
    identities: _containers.RepeatedCompositeFieldContainer[Identity]
    next_page_token: str
    total_size: int
    def __init__(self, identities: _Optional[_Iterable[_Union[Identity, _Mapping]]] = ..., next_page_token: _Optional[str] = ..., total_size: _Optional[int] = ...) -> None: ...

class PushoverMethod(_message.Message):
    __slots__ = ["pushover_key"]
    PUSHOVER_KEY_FIELD_NUMBER: _ClassVar[int]
    pushover_key: str
    def __init__(self, pushover_key: _Optional[str] = ...) -> None: ...

class SMSMethod(_message.Message):
    __slots__ = ["phone"]
    PHONE_FIELD_NUMBER: _ClassVar[int]
    phone: str
    def __init__(self, phone: _Optional[str] = ...) -> None: ...

class SecurityQuestionsMethod(_message.Message):
    __slots__ = ["answer"]
    ANSWER_FIELD_NUMBER: _ClassVar[int]
    answer: str
    def __init__(self, answer: _Optional[str] = ...) -> None: ...

class SoftwareHOTPMethod(_message.Message):
    __slots__ = ["account_name", "counter", "digits", "hash"]
    ACCOUNT_NAME_FIELD_NUMBER: _ClassVar[int]
    COUNTER_FIELD_NUMBER: _ClassVar[int]
    DIGITS_FIELD_NUMBER: _ClassVar[int]
    HASH_FIELD_NUMBER: _ClassVar[int]
    account_name: str
    counter: int
    digits: int
    hash: Hash
    def __init__(self, hash: _Optional[_Union[Hash, str]] = ..., digits: _Optional[int] = ..., counter: _Optional[int] = ..., account_name: _Optional[str] = ...) -> None: ...

class SoftwareTOTPMethod(_message.Message):
    __slots__ = ["account_name", "digits", "hash"]
    ACCOUNT_NAME_FIELD_NUMBER: _ClassVar[int]
    DIGITS_FIELD_NUMBER: _ClassVar[int]
    HASH_FIELD_NUMBER: _ClassVar[int]
    account_name: str
    digits: int
    hash: Hash
    def __init__(self, hash: _Optional[_Union[Hash, str]] = ..., digits: _Optional[int] = ..., account_name: _Optional[str] = ...) -> None: ...

class UpdateAppRequest(_message.Message):
    __slots__ = ["app", "update_mask"]
    APP_FIELD_NUMBER: _ClassVar[int]
    UPDATE_MASK_FIELD_NUMBER: _ClassVar[int]
    app: App
    update_mask: _field_mask_pb2.FieldMask
    def __init__(self, app: _Optional[_Union[App, _Mapping]] = ..., update_mask: _Optional[_Union[_field_mask_pb2.FieldMask, _Mapping]] = ...) -> None: ...

class VerifyIdentityRequest(_message.Message):
    __slots__ = ["app_id", "id", "passcode"]
    APP_ID_FIELD_NUMBER: _ClassVar[int]
    ID_FIELD_NUMBER: _ClassVar[int]
    PASSCODE_FIELD_NUMBER: _ClassVar[int]
    app_id: str
    id: str
    passcode: str
    def __init__(self, id: _Optional[str] = ..., app_id: _Optional[str] = ..., passcode: _Optional[str] = ...) -> None: ...

class IdentityStatus(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = []

class Hash(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = []
