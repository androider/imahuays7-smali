.class public final enum Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;
.super Ljava/lang/Enum;
.source "UpnpHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/message/header/UpnpHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum CALLBACK:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum CONTENT_RANGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EXT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EXT_AV_CLIENT_INFO:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EXT_IFACE_MAC:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum HOST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum LOCATION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MAN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MAX_AGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MX:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum NTS:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum PRAGMA:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum RANGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SEQ:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SID:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SOAPACTION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum TIMEOUT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private headerTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation
.end field

.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 44
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "USN"

    const-string v2, "USN"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/model/message/header/USNRootDeviceHeader;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lorg/fourthline/cling/model/message/header/DeviceUSNHeader;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Lorg/fourthline/cling/model/message/header/ServiceUSNHeader;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Lorg/fourthline/cling/model/message/header/UDNHeader;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-direct {v0, v1, v6, v2, v4}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 50
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "NT"

    const-string v2, "NT"

    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/model/message/header/RootDeviceHeader;

    aput-object v10, v5, v6

    const-class v10, Lorg/fourthline/cling/model/message/header/UDADeviceTypeHeader;

    aput-object v10, v5, v7

    const-class v10, Lorg/fourthline/cling/model/message/header/UDAServiceTypeHeader;

    aput-object v10, v5, v8

    const-class v10, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;

    aput-object v10, v5, v9

    const-class v10, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;

    aput-object v10, v5, v3

    const-class v10, Lorg/fourthline/cling/model/message/header/UDNHeader;

    const/4 v11, 0x5

    aput-object v10, v5, v11

    const-class v10, Lorg/fourthline/cling/model/message/header/NTEventHeader;

    const/4 v12, 0x6

    aput-object v10, v5, v12

    invoke-direct {v0, v1, v7, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 59
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "NTS"

    const-string v2, "NTS"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/model/message/header/NTSHeader;

    aput-object v10, v5, v6

    invoke-direct {v0, v1, v8, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 60
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "HOST"

    const-string v2, "HOST"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/model/message/header/HostHeader;

    aput-object v10, v5, v6

    invoke-direct {v0, v1, v9, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 61
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "SERVER"

    const-string v2, "SERVER"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/model/message/header/ServerHeader;

    aput-object v10, v5, v6

    invoke-direct {v0, v1, v3, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 62
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "LOCATION"

    const-string v2, "LOCATION"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/model/message/header/LocationHeader;

    aput-object v10, v5, v6

    invoke-direct {v0, v1, v11, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 63
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "MAX_AGE"

    const-string v2, "CACHE-CONTROL"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;

    aput-object v10, v5, v6

    invoke-direct {v0, v1, v12, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 64
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "USER_AGENT"

    const-string v2, "USER-AGENT"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/model/message/header/UserAgentHeader;

    aput-object v10, v5, v6

    invoke-direct {v0, v1, v4, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 65
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "CONTENT_TYPE"

    const-string v2, "CONTENT-TYPE"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    aput-object v10, v5, v6

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 66
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "MAN"

    const-string v2, "MAN"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/model/message/header/MANHeader;

    aput-object v13, v5, v6

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 67
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "MX"

    const-string v2, "MX"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v14, Lorg/fourthline/cling/model/message/header/MXHeader;

    aput-object v14, v5, v6

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MX:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 68
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "ST"

    const-string v2, "ST"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/STAllHeader;

    aput-object v15, v5, v6

    const-class v15, Lorg/fourthline/cling/model/message/header/RootDeviceHeader;

    aput-object v15, v5, v7

    const-class v15, Lorg/fourthline/cling/model/message/header/UDADeviceTypeHeader;

    aput-object v15, v5, v8

    const-class v15, Lorg/fourthline/cling/model/message/header/UDAServiceTypeHeader;

    aput-object v15, v5, v9

    const-class v15, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;

    aput-object v15, v5, v3

    const-class v15, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;

    aput-object v15, v5, v11

    const-class v15, Lorg/fourthline/cling/model/message/header/UDNHeader;

    aput-object v15, v5, v12

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 77
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "EXT"

    const-string v2, "EXT"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v16, Lorg/fourthline/cling/model/message/header/EXTHeader;

    aput-object v16, v5, v6

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 78
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "SOAPACTION"

    const-string v2, "SOAPACTION"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v16, Lorg/fourthline/cling/model/message/header/SoapActionHeader;

    aput-object v16, v5, v6

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 79
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "TIMEOUT"

    const-string v2, "TIMEOUT"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v16, Lorg/fourthline/cling/model/message/header/TimeoutHeader;

    aput-object v16, v5, v6

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 80
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "CALLBACK"

    const-string v2, "CALLBACK"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v16, Lorg/fourthline/cling/model/message/header/CallbackHeader;

    aput-object v16, v5, v6

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 81
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "SID"

    const-string v2, "SID"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;

    aput-object v15, v5, v6

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 82
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "SEQ"

    const-string v2, "SEQ"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/EventSequenceHeader;

    aput-object v15, v5, v6

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SEQ:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 83
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "RANGE"

    const-string v2, "RANGE"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/RangeHeader;

    aput-object v15, v5, v6

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->RANGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 84
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "CONTENT_RANGE"

    const-string v2, "CONTENT-RANGE"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/ContentRangeHeader;

    aput-object v15, v5, v6

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_RANGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 85
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "PRAGMA"

    const-string v2, "PRAGMA"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/PragmaHeader;

    aput-object v15, v5, v6

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->PRAGMA:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 87
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "EXT_IFACE_MAC"

    const-string v2, "X-CLING-IFACE-MAC"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;

    aput-object v15, v5, v6

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 88
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "EXT_AV_CLIENT_INFO"

    const-string v2, "X-AV-CLIENT-INFO"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/AVClientInfoHeader;

    aput-object v15, v5, v6

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2, v5}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_AV_CLIENT_INFO:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v0, 0x17

    .line 42
    new-array v0, v0, [Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v11

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v12

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v10

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v13

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MX:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v14

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SEQ:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->RANGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_RANGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->PRAGMA:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_AV_CLIENT_INFO:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->$VALUES:[Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 90
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type$1;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->byName:Ljava/util/Map;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->httpName:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-void
.end method

.method public static getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_0
    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->byName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;
    .locals 1

    .line 42
    const-class v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;
    .locals 1

    .line 42
    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->$VALUES:[Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    return-object v0
.end method


# virtual methods
.method public getHeaderTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getHttpName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->httpName:Ljava/lang/String;

    return-object v0
.end method

.method public isValidHeaderType(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;)Z"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHeaderTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 115
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
