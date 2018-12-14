.class public final enum Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;
.super Ljava/lang/Enum;
.source "AVTransportErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum CONTENT_BUSY:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum ILLEGAL_MIME_TYPE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum ILLEGAL_SEEK_TARGET:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum INVALID_INSTANCE_ID:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum MEDIA_FULL:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum MEDIA_PROTECTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum NO_CONTENTS:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum PLAYBACK_FORMAT_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum PLAYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum READ_ERROR:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum RECORDQUALITYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum RECORD_FORMAT_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum RESOURCE_NOT_FOUND:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum SEEKMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum TRANSPORT_LOCKED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum WRITE_ERROR:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "TRANSITION_NOT_AVAILABLE"

    const-string v2, "The immediate transition from current to desired state not supported"

    const/4 v3, 0x0

    const/16 v4, 0x2bd

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "NO_CONTENTS"

    const-string v2, "The media does not contain any contents that can be played"

    const/4 v4, 0x1

    const/16 v5, 0x2be

    invoke-direct {v0, v1, v4, v5, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->NO_CONTENTS:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "READ_ERROR"

    const-string v2, "The media cannot be read"

    const/4 v5, 0x2

    const/16 v6, 0x2bf

    invoke-direct {v0, v1, v5, v6, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->READ_ERROR:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 26
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "PLAYBACK_FORMAT_NOT_SUPPORTED"

    const-string v2, "The storage format of the currently loaded media is not supported for playback"

    const/4 v6, 0x3

    const/16 v7, 0x2c0

    invoke-direct {v0, v1, v6, v7, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->PLAYBACK_FORMAT_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 27
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "TRANSPORT_LOCKED"

    const-string v2, "The transport is \'hold locked\', e.g. with a keyboard lock"

    const/4 v7, 0x4

    const/16 v8, 0x2c1

    invoke-direct {v0, v1, v7, v8, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSPORT_LOCKED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "WRITE_ERROR"

    const-string v2, "The media cannot be written"

    const/4 v8, 0x5

    const/16 v9, 0x2c2

    invoke-direct {v0, v1, v8, v9, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->WRITE_ERROR:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "MEDIA_PROTECTED"

    const-string v2, "The media is write-protected or is of a not writable type"

    const/4 v9, 0x6

    const/16 v10, 0x2c3

    invoke-direct {v0, v1, v9, v10, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->MEDIA_PROTECTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "RECORD_FORMAT_NOT_SUPPORTED"

    const-string v2, "The storage format of the currently loaded media is not supported for recording"

    const/4 v10, 0x7

    const/16 v11, 0x2c4

    invoke-direct {v0, v1, v10, v11, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->RECORD_FORMAT_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 31
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "MEDIA_FULL"

    const-string v2, "There is no free space left on the loaded media"

    const/16 v11, 0x8

    const/16 v12, 0x2c5

    invoke-direct {v0, v1, v11, v12, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->MEDIA_FULL:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "SEEKMODE_NOT_SUPPORTED"

    const-string v2, "The specified seek mode is not supported by the device"

    const/16 v12, 0x9

    const/16 v13, 0x2c6

    invoke-direct {v0, v1, v12, v13, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->SEEKMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "ILLEGAL_SEEK_TARGET"

    const-string v2, "The specified seek target is not specified in terms of the seek mode, or is not present on the media"

    const/16 v13, 0xa

    const/16 v14, 0x2c7

    invoke-direct {v0, v1, v13, v14, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->ILLEGAL_SEEK_TARGET:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 34
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "PLAYMODE_NOT_SUPPORTED"

    const-string v2, "The specified play mode is not supported by the device"

    const/16 v14, 0xb

    const/16 v15, 0x2c8

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->PLAYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 35
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "RECORDQUALITYMODE_NOT_SUPPORTED"

    const-string v2, "The specified record quality mode is not supported by the device"

    const/16 v15, 0xc

    const/16 v14, 0x2c9

    invoke-direct {v0, v1, v15, v14, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->RECORDQUALITYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 36
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "ILLEGAL_MIME_TYPE"

    const-string v2, "The specified resource has a MIME-type which is not supported"

    const/16 v14, 0xd

    const/16 v15, 0x2ca

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->ILLEGAL_MIME_TYPE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 37
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "CONTENT_BUSY"

    const-string v2, "The resource is already being played by other means"

    const/16 v15, 0xe

    const/16 v14, 0x2cb

    invoke-direct {v0, v1, v15, v14, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->CONTENT_BUSY:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 38
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "RESOURCE_NOT_FOUND"

    const-string v2, "The specified resource cannot be found in the network"

    const/16 v14, 0xf

    const/16 v15, 0x2cc

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->RESOURCE_NOT_FOUND:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 39
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "INVALID_INSTANCE_ID"

    const-string v2, "The specified instanceID is invalid for this AVTransport"

    const/16 v14, 0x10

    const/16 v15, 0x2ce

    invoke-direct {v0, v1, v14, v15, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->INVALID_INSTANCE_ID:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const/16 v0, 0x11

    .line 21
    new-array v0, v0, [Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->NO_CONTENTS:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->READ_ERROR:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->PLAYBACK_FORMAT_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSPORT_LOCKED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->WRITE_ERROR:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->MEDIA_PROTECTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->RECORD_FORMAT_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v10

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->MEDIA_FULL:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v11

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->SEEKMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v12

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->ILLEGAL_SEEK_TARGET:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v13

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->PLAYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->RECORDQUALITYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->ILLEGAL_MIME_TYPE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->CONTENT_BUSY:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->RESOURCE_NOT_FOUND:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->INVALID_INSTANCE_ID:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->$VALUES:[Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->code:I

    .line 46
    iput-object p4, p0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(I)Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;
    .locals 5

    .line 58
    invoke-static {}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->values()[Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 59
    invoke-virtual {v3}, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->$VALUES:[Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
