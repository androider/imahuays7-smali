.class public Lorg/fourthline/cling/model/profile/ClientInfo;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# instance fields
.field protected final requestHeaders:Lorg/fourthline/cling/model/message/UpnpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>()V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/model/profile/ClientInfo;-><init>(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpHeaders;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/model/profile/ClientInfo;->requestHeaders:Lorg/fourthline/cling/model/message/UpnpHeaders;

    return-void
.end method


# virtual methods
.method public getRequestHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/ClientInfo;->requestHeaders:Lorg/fourthline/cling/model/message/UpnpHeaders;

    return-object v0
.end method

.method public getRequestUserAgent()Ljava/lang/String;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/ClientInfo;->getRequestHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeaderString(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRequestUserAgent(Ljava/lang/String;)V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/ClientInfo;->getRequestHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/UserAgentHeader;

    invoke-direct {v2, p1}, Lorg/fourthline/cling/model/message/header/UserAgentHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") User-Agent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/ClientInfo;->getRequestUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
