.class public Lorg/eclipse/jetty/http/HttpStatus;
.super Ljava/lang/Object;
.source "HttpStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpStatus$Code;
    }
.end annotation


# static fields
.field public static final ACCEPTED_202:I = 0xca

.field public static final BAD_GATEWAY_502:I = 0x1f6

.field public static final BAD_REQUEST_400:I = 0x190

.field public static final CONFLICT_409:I = 0x199

.field public static final CONTINUE_100:I = 0x64

.field public static final CREATED_201:I = 0xc9

.field public static final EXPECTATION_FAILED_417:I = 0x1a1

.field public static final FAILED_DEPENDENCY_424:I = 0x1a8

.field public static final FORBIDDEN_403:I = 0x193

.field public static final FOUND_302:I = 0x12e

.field public static final GATEWAY_TIMEOUT_504:I = 0x1f8

.field public static final GONE_410:I = 0x19a

.field public static final HTTP_VERSION_NOT_SUPPORTED_505:I = 0x1f9

.field public static final INSUFFICIENT_STORAGE_507:I = 0x1fb

.field public static final INTERNAL_SERVER_ERROR_500:I = 0x1f4

.field public static final LENGTH_REQUIRED_411:I = 0x19b

.field public static final LOCKED_423:I = 0x1a7

.field public static final MAX_CODE:I = 0x1fb

.field public static final METHOD_NOT_ALLOWED_405:I = 0x195

.field public static final MOVED_PERMANENTLY_301:I = 0x12d

.field public static final MOVED_TEMPORARILY_302:I = 0x12e

.field public static final MULTIPLE_CHOICES_300:I = 0x12c

.field public static final MULTI_STATUS_207:I = 0xcf

.field public static final NON_AUTHORITATIVE_INFORMATION_203:I = 0xcb

.field public static final NOT_ACCEPTABLE_406:I = 0x196

.field public static final NOT_FOUND_404:I = 0x194

.field public static final NOT_IMPLEMENTED_501:I = 0x1f5

.field public static final NOT_MODIFIED_304:I = 0x130

.field public static final NO_CONTENT_204:I = 0xcc

.field public static final OK_200:I = 0xc8

.field public static final PARTIAL_CONTENT_206:I = 0xce

.field public static final PAYMENT_REQUIRED_402:I = 0x192

.field public static final PRECONDITION_FAILED_412:I = 0x19c

.field public static final PROCESSING_102:I = 0x66

.field public static final PROXY_AUTHENTICATION_REQUIRED_407:I = 0x197

.field public static final REQUESTED_RANGE_NOT_SATISFIABLE_416:I = 0x1a0

.field public static final REQUEST_ENTITY_TOO_LARGE_413:I = 0x19d

.field public static final REQUEST_TIMEOUT_408:I = 0x198

.field public static final REQUEST_URI_TOO_LONG_414:I = 0x19e

.field public static final RESET_CONTENT_205:I = 0xcd

.field public static final SEE_OTHER_303:I = 0x12f

.field public static final SERVICE_UNAVAILABLE_503:I = 0x1f7

.field public static final SWITCHING_PROTOCOLS_101:I = 0x65

.field public static final TEMPORARY_REDIRECT_307:I = 0x133

.field public static final UNAUTHORIZED_401:I = 0x191

.field public static final UNPROCESSABLE_ENTITY_422:I = 0x1a6

.field public static final UNSUPPORTED_MEDIA_TYPE_415:I = 0x19f

.field public static final USE_PROXY_305:I = 0x131

.field private static final codeMap:[Lorg/eclipse/jetty/http/HttpStatus$Code;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x1fc

    .line 670
    new-array v0, v0, [Lorg/eclipse/jetty/http/HttpStatus$Code;

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus;->codeMap:[Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 674
    invoke-static {}, Lorg/eclipse/jetty/http/HttpStatus$Code;->values()[Lorg/eclipse/jetty/http/HttpStatus$Code;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 676
    sget-object v4, Lorg/eclipse/jetty/http/HttpStatus;->codeMap:[Lorg/eclipse/jetty/http/HttpStatus$Code;

    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpStatus$Code;->access$000(Lorg/eclipse/jetty/http/HttpStatus$Code;)I

    move-result v5

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCode(I)Lorg/eclipse/jetty/http/HttpStatus$Code;
    .locals 1

    const/16 v0, 0x1fb

    if-gt p0, v0, :cond_0

    .line 931
    sget-object v0, Lorg/eclipse/jetty/http/HttpStatus;->codeMap:[Lorg/eclipse/jetty/http/HttpStatus$Code;

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMessage(I)Ljava/lang/String;
    .locals 1

    .line 946
    invoke-static {p0}, Lorg/eclipse/jetty/http/HttpStatus;->getCode(I)Lorg/eclipse/jetty/http/HttpStatus$Code;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpStatus$Code;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 953
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isClientError(I)Z
    .locals 1

    const/16 v0, 0x190

    if-gt v0, p0, :cond_0

    const/16 v0, 0x1f3

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInformational(I)Z
    .locals 1

    const/16 v0, 0x64

    if-gt v0, p0, :cond_0

    const/16 v0, 0xc7

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRedirection(I)Z
    .locals 1

    const/16 v0, 0x12c

    if-gt v0, p0, :cond_0

    const/16 v0, 0x18f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isServerError(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-gt v0, p0, :cond_0

    const/16 v0, 0x257

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSuccess(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-gt v0, p0, :cond_0

    const/16 v0, 0x12b

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
