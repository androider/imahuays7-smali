.class public final enum Lorg/eclipse/jetty/http/HttpStatus$Code;
.super Ljava/lang/Enum;
.source "HttpStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jetty/http/HttpStatus$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum ACCEPTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum BAD_GATEWAY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum BAD_REQUEST:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum CONFLICT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum CONTINUE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum CREATED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum EXPECTATION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum FAILED_DEPENDENCY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum FORBIDDEN:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum GATEWAY_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum GONE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum HTTP_VERSION_NOT_SUPPORTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum INSUFFICIENT_STORAGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum INTERNAL_SERVER_ERROR:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum LENGTH_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum LOCKED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum METHOD_NOT_ALLOWED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum MOVED_PERMANENTLY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum MOVED_TEMPORARILY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum MULTIPLE_CHOICES:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum MULTI_STATUS:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NON_AUTHORITATIVE_INFORMATION:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NOT_ACCEPTABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NOT_FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NOT_IMPLEMENTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NOT_MODIFIED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NO_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum OK:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum PARTIAL_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum PAYMENT_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum PRECONDITION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum PROCESSING:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum PROXY_AUTHENTICATION_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum REQUEST_ENTITY_TOO_LARGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum REQUEST_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum REQUEST_URI_TOO_LONG:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum RESET_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum SEE_OTHER:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum SERVICE_UNAVAILABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum SWITCHING_PROTOCOLS:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum TEMPORARY_REDIRECT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum UNAUTHORIZED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum UNPROCESSABLE_ENTITY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum USE_PROXY:Lorg/eclipse/jetty/http/HttpStatus$Code;


# instance fields
.field private final _code:I

.field private final _message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 690
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "CONTINUE"

    const-string v2, "Continue"

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->CONTINUE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 692
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "SWITCHING_PROTOCOLS"

    const-string v2, "Switching Protocols"

    const/4 v4, 0x1

    const/16 v5, 0x65

    invoke-direct {v0, v1, v4, v5, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->SWITCHING_PROTOCOLS:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 694
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "PROCESSING"

    const-string v2, "Processing"

    const/4 v5, 0x2

    const/16 v6, 0x66

    invoke-direct {v0, v1, v5, v6, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->PROCESSING:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 703
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "OK"

    const-string v2, "OK"

    const/4 v6, 0x3

    const/16 v7, 0xc8

    invoke-direct {v0, v1, v6, v7, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->OK:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 705
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "CREATED"

    const-string v2, "Created"

    const/4 v7, 0x4

    const/16 v8, 0xc9

    invoke-direct {v0, v1, v7, v8, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->CREATED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 707
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "ACCEPTED"

    const-string v2, "Accepted"

    const/4 v8, 0x5

    const/16 v9, 0xca

    invoke-direct {v0, v1, v8, v9, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->ACCEPTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 709
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NON_AUTHORITATIVE_INFORMATION"

    const-string v2, "Non Authoritative Information"

    const/4 v9, 0x6

    const/16 v10, 0xcb

    invoke-direct {v0, v1, v9, v10, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NON_AUTHORITATIVE_INFORMATION:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 711
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NO_CONTENT"

    const-string v2, "No Content"

    const/4 v10, 0x7

    const/16 v11, 0xcc

    invoke-direct {v0, v1, v10, v11, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NO_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 713
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "RESET_CONTENT"

    const-string v2, "Reset Content"

    const/16 v11, 0x8

    const/16 v12, 0xcd

    invoke-direct {v0, v1, v11, v12, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->RESET_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 715
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "PARTIAL_CONTENT"

    const-string v2, "Partial Content"

    const/16 v12, 0x9

    const/16 v13, 0xce

    invoke-direct {v0, v1, v12, v13, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->PARTIAL_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 717
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "MULTI_STATUS"

    const-string v2, "Multi-Status"

    const/16 v13, 0xa

    const/16 v14, 0xcf

    invoke-direct {v0, v1, v13, v14, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->MULTI_STATUS:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 726
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "MULTIPLE_CHOICES"

    const-string v2, "Multiple Choices"

    const/16 v14, 0xb

    const/16 v15, 0x12c

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->MULTIPLE_CHOICES:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 728
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "MOVED_PERMANENTLY"

    const-string v2, "Moved Permanently"

    const/16 v15, 0xc

    const/16 v14, 0x12d

    invoke-direct {v0, v1, v15, v14, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->MOVED_PERMANENTLY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 730
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "MOVED_TEMPORARILY"

    const-string v2, "Moved Temporarily"

    const/16 v14, 0x12e

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v14, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->MOVED_TEMPORARILY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 732
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "FOUND"

    const-string v2, "Found"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v14, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 734
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "SEE_OTHER"

    const-string v2, "See Other"

    const/16 v14, 0xf

    const/16 v15, 0x12f

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->SEE_OTHER:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 736
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NOT_MODIFIED"

    const-string v2, "Not Modified"

    const/16 v14, 0x10

    const/16 v15, 0x130

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_MODIFIED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 738
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "USE_PROXY"

    const-string v2, "Use Proxy"

    const/16 v14, 0x11

    const/16 v15, 0x131

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->USE_PROXY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 740
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "TEMPORARY_REDIRECT"

    const-string v2, "Temporary Redirect"

    const/16 v14, 0x12

    const/16 v15, 0x133

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->TEMPORARY_REDIRECT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 749
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "BAD_REQUEST"

    const-string v2, "Bad Request"

    const/16 v14, 0x13

    const/16 v15, 0x190

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->BAD_REQUEST:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 751
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "UNAUTHORIZED"

    const-string v2, "Unauthorized"

    const/16 v14, 0x14

    const/16 v15, 0x191

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNAUTHORIZED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 753
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "PAYMENT_REQUIRED"

    const-string v2, "Payment Required"

    const/16 v14, 0x15

    const/16 v15, 0x192

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->PAYMENT_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 755
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "FORBIDDEN"

    const-string v2, "Forbidden"

    const/16 v14, 0x16

    const/16 v15, 0x193

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->FORBIDDEN:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 757
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NOT_FOUND"

    const-string v2, "Not Found"

    const/16 v14, 0x17

    const/16 v15, 0x194

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 759
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "METHOD_NOT_ALLOWED"

    const-string v2, "Method Not Allowed"

    const/16 v14, 0x18

    const/16 v15, 0x195

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->METHOD_NOT_ALLOWED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 761
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NOT_ACCEPTABLE"

    const-string v2, "Not Acceptable"

    const/16 v14, 0x19

    const/16 v15, 0x196

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_ACCEPTABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 763
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "PROXY_AUTHENTICATION_REQUIRED"

    const-string v2, "Proxy Authentication Required"

    const/16 v14, 0x1a

    const/16 v15, 0x197

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->PROXY_AUTHENTICATION_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 765
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "REQUEST_TIMEOUT"

    const-string v2, "Request Timeout"

    const/16 v14, 0x1b

    const/16 v15, 0x198

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 767
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "CONFLICT"

    const-string v2, "Conflict"

    const/16 v14, 0x1c

    const/16 v15, 0x199

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->CONFLICT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 769
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "GONE"

    const-string v2, "Gone"

    const/16 v14, 0x1d

    const/16 v15, 0x19a

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->GONE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 771
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "LENGTH_REQUIRED"

    const-string v2, "Length Required"

    const/16 v14, 0x1e

    const/16 v15, 0x19b

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->LENGTH_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 773
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "PRECONDITION_FAILED"

    const-string v2, "Precondition Failed"

    const/16 v14, 0x1f

    const/16 v15, 0x19c

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->PRECONDITION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 775
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "REQUEST_ENTITY_TOO_LARGE"

    const-string v2, "Request Entity Too Large"

    const/16 v14, 0x20

    const/16 v15, 0x19d

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_ENTITY_TOO_LARGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 777
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "REQUEST_URI_TOO_LONG"

    const-string v2, "Request-URI Too Long"

    const/16 v14, 0x21

    const/16 v15, 0x19e

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_URI_TOO_LONG:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 779
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "UNSUPPORTED_MEDIA_TYPE"

    const-string v2, "Unsupported Media Type"

    const/16 v14, 0x22

    const/16 v15, 0x19f

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNSUPPORTED_MEDIA_TYPE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 781
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "REQUESTED_RANGE_NOT_SATISFIABLE"

    const-string v2, "Requested Range Not Satisfiable"

    const/16 v14, 0x23

    const/16 v15, 0x1a0

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 783
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "EXPECTATION_FAILED"

    const-string v2, "Expectation Failed"

    const/16 v14, 0x24

    const/16 v15, 0x1a1

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->EXPECTATION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 785
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "UNPROCESSABLE_ENTITY"

    const-string v2, "Unprocessable Entity"

    const/16 v14, 0x25

    const/16 v15, 0x1a6

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNPROCESSABLE_ENTITY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 787
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "LOCKED"

    const-string v2, "Locked"

    const/16 v14, 0x26

    const/16 v15, 0x1a7

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->LOCKED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 789
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "FAILED_DEPENDENCY"

    const-string v2, "Failed Dependency"

    const/16 v14, 0x27

    const/16 v15, 0x1a8

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->FAILED_DEPENDENCY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 798
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "INTERNAL_SERVER_ERROR"

    const-string v2, "Server Error"

    const/16 v14, 0x28

    const/16 v15, 0x1f4

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->INTERNAL_SERVER_ERROR:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 800
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NOT_IMPLEMENTED"

    const-string v2, "Not Implemented"

    const/16 v14, 0x29

    const/16 v15, 0x1f5

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_IMPLEMENTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 802
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "BAD_GATEWAY"

    const-string v2, "Bad Gateway"

    const/16 v14, 0x2a

    const/16 v15, 0x1f6

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->BAD_GATEWAY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 804
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "SERVICE_UNAVAILABLE"

    const-string v2, "Service Unavailable"

    const/16 v14, 0x2b

    const/16 v15, 0x1f7

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->SERVICE_UNAVAILABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 806
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "GATEWAY_TIMEOUT"

    const-string v2, "Gateway Timeout"

    const/16 v14, 0x2c

    const/16 v15, 0x1f8

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->GATEWAY_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 808
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "HTTP_VERSION_NOT_SUPPORTED"

    const-string v2, "HTTP Version Not Supported"

    const/16 v14, 0x2d

    const/16 v15, 0x1f9

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->HTTP_VERSION_NOT_SUPPORTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 810
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "INSUFFICIENT_STORAGE"

    const-string v2, "Insufficient Storage"

    const/16 v14, 0x2e

    const/16 v15, 0x1fb

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->INSUFFICIENT_STORAGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v0, 0x2f

    .line 681
    new-array v0, v0, [Lorg/eclipse/jetty/http/HttpStatus$Code;

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->CONTINUE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->SWITCHING_PROTOCOLS:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->PROCESSING:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->OK:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->CREATED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v7

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->ACCEPTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v8

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->NON_AUTHORITATIVE_INFORMATION:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v9

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->NO_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v10

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->RESET_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v11

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->PARTIAL_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v12

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->MULTI_STATUS:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v13

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->MULTIPLE_CHOICES:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->MOVED_PERMANENTLY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->MOVED_TEMPORARILY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->SEE_OTHER:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_MODIFIED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->USE_PROXY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->TEMPORARY_REDIRECT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->BAD_REQUEST:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNAUTHORIZED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->PAYMENT_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->FORBIDDEN:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->METHOD_NOT_ALLOWED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_ACCEPTABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->PROXY_AUTHENTICATION_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->CONFLICT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->GONE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->LENGTH_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->PRECONDITION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_ENTITY_TOO_LARGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_URI_TOO_LONG:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNSUPPORTED_MEDIA_TYPE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->EXPECTATION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNPROCESSABLE_ENTITY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->LOCKED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->FAILED_DEPENDENCY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->INTERNAL_SERVER_ERROR:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_IMPLEMENTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->BAD_GATEWAY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->SERVICE_UNAVAILABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->GATEWAY_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->HTTP_VERSION_NOT_SUPPORTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->INSUFFICIENT_STORAGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->$VALUES:[Lorg/eclipse/jetty/http/HttpStatus$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 816
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 817
    iput p3, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_code:I

    .line 818
    iput-object p4, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_message:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/http/HttpStatus$Code;)I
    .locals 0

    .line 681
    iget p0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_code:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpStatus$Code;
    .locals 1

    .line 681
    const-class v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jetty/http/HttpStatus$Code;
    .locals 1

    .line 681
    sget-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->$VALUES:[Lorg/eclipse/jetty/http/HttpStatus$Code;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/http/HttpStatus$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/http/HttpStatus$Code;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1

    .line 834
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_code:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCode()I
    .locals 1

    .line 823
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 828
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_message:Ljava/lang/String;

    return-object v0
.end method

.method public isClientError()Z
    .locals 1

    .line 900
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_code:I

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->isClientError(I)Z

    move-result v0

    return v0
.end method

.method public isInformational()Z
    .locals 1

    .line 855
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_code:I

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->isInformational(I)Z

    move-result v0

    return v0
.end method

.method public isRedirection()Z
    .locals 1

    .line 885
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_code:I

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->isRedirection(I)Z

    move-result v0

    return v0
.end method

.method public isServerError()Z
    .locals 1

    .line 915
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_code:I

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->isServerError(I)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 870
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_code:I

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[%03d %s]"

    const/4 v1, 0x2

    .line 840
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->_code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpStatus$Code;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
