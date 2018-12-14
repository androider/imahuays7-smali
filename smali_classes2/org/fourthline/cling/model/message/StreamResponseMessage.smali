.class public Lorg/fourthline/cling/model/message/StreamResponseMessage;
.super Lorg/fourthline/cling/model/message/UpnpMessage;
.source "StreamResponseMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/UpnpMessage<",
        "Lorg/fourthline/cling/model/message/UpnpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->OK:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, v1, p1}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/message/header/ContentTypeHeader;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {p1, v0, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/seamless/util/MimeType;)V
    .locals 1

    .line 66
    new-instance v0, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/seamless/util/MimeType;)V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/message/header/ContentTypeHeader;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpMessage;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V
    .locals 1

    .line 34
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1

    .line 43
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpResponse;[B)V
    .locals 1

    .line 52
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 56
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->OK:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, v1, p1}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([BLorg/fourthline/cling/model/message/header/ContentTypeHeader;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>([B)V

    .line 71
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {p1, v0, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method

.method public constructor <init>([BLorg/seamless/util/MimeType;)V
    .locals 1

    .line 75
    new-instance v0, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/seamless/util/MimeType;)V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>([BLorg/fourthline/cling/model/message/header/ContentTypeHeader;)V

    return-void
.end method
