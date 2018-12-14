.class public Lorg/fourthline/cling/model/message/StreamRequestMessage;
.super Lorg/fourthline/cling/model/message/UpnpMessage;
.source "StreamRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/UpnpMessage<",
        "Lorg/fourthline/cling/model/message/UpnpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field protected connection:Lorg/fourthline/cling/model/message/Connection;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpMessage;)V

    .line 32
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getConnection()Lorg/fourthline/cling/model/message/Connection;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/message/StreamRequestMessage;->connection:Lorg/fourthline/cling/model/message/Connection;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V
    .locals 1

    .line 40
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;Ljava/lang/String;)V
    .locals 1

    .line 52
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    sget-object p1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, p1, p3}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;[B)V
    .locals 1

    .line 65
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    sget-object p1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, p1, p3}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V
    .locals 1

    .line 44
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;Ljava/lang/String;)V
    .locals 1

    .line 56
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    sget-object p1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, p1, p3}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;[B)V
    .locals 1

    .line 69
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    sget-object p1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, p1, p3}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest;Ljava/lang/String;)V
    .locals 1

    .line 48
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest;[B)V
    .locals 1

    .line 61
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getConnection()Lorg/fourthline/cling/model/message/Connection;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/fourthline/cling/model/message/StreamRequestMessage;->connection:Lorg/fourthline/cling/model/message/Connection;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public setConnection(Lorg/fourthline/cling/model/message/Connection;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/fourthline/cling/model/message/StreamRequestMessage;->connection:Lorg/fourthline/cling/model/message/Connection;

    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/message/UpnpRequest;->setUri(Ljava/net/URI;)V

    return-void
.end method
