.class public Lorg/fourthline/cling/model/profile/RemoteClientInfo;
.super Lorg/fourthline/cling/model/profile/ClientInfo;
.source "RemoteClientInfo.java"


# instance fields
.field protected final connection:Lorg/fourthline/cling/model/message/Connection;

.field protected final extraResponseHeaders:Lorg/fourthline/cling/model/message/UpnpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/Connection;Lorg/fourthline/cling/model/message/UpnpHeaders;)V
    .locals 0

    .line 52
    invoke-direct {p0, p2}, Lorg/fourthline/cling/model/profile/ClientInfo;-><init>(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    .line 40
    new-instance p2, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-direct {p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>()V

    iput-object p2, p0, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->extraResponseHeaders:Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 53
    iput-object p1, p0, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->connection:Lorg/fourthline/cling/model/message/Connection;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getConnection()Lorg/fourthline/cling/model/message/Connection;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-direct {p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>()V

    .line 47
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;-><init>(Lorg/fourthline/cling/model/message/Connection;Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    return-void
.end method


# virtual methods
.method public getConnection()Lorg/fourthline/cling/model/message/Connection;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->connection:Lorg/fourthline/cling/model/message/Connection;

    return-object v0
.end method

.method public getExtraResponseHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->extraResponseHeaders:Lorg/fourthline/cling/model/message/UpnpHeaders;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getConnection()Lorg/fourthline/cling/model/message/Connection;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/model/message/Connection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getConnection()Lorg/fourthline/cling/model/message/Connection;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/model/message/Connection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public isPS3Request()Z
    .locals 3

    .line 122
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_AV_CLIENT_INFO:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeaderString(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lorg/seamless/http/RequestInfo;->isPS3Request(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRequestCancelled()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getConnection()Lorg/fourthline/cling/model/message/Connection;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/model/message/Connection;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isWMPRequest()Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/http/RequestInfo;->isWMPRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isXbox360Request()Z
    .locals 3

    .line 115
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeaderString(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lorg/seamless/http/RequestInfo;->isXbox360Request(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setResponseUserAgent(Ljava/lang/String;)V
    .locals 1

    .line 98
    new-instance v0, Lorg/fourthline/cling/model/message/header/UserAgentHeader;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/header/UserAgentHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->setResponseUserAgent(Lorg/fourthline/cling/model/message/header/UserAgentHeader;)V

    return-void
.end method

.method public setResponseUserAgent(Lorg/fourthline/cling/model/message/header/UserAgentHeader;)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getExtraResponseHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method

.method public throwIfRequestCancelled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->isRequestCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Client\'s request cancelled"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Remote Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
