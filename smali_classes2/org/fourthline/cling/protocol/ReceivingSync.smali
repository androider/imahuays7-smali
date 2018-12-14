.class public abstract Lorg/fourthline/cling/protocol/ReceivingSync;
.super Lorg/fourthline/cling/protocol/ReceivingAsync;
.source "ReceivingSync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
        "OUT:",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">",
        "Lorg/fourthline/cling/protocol/ReceivingAsync<",
        "TIN;>;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOUT;"
        }
    .end annotation
.end field

.field protected final remoteClientInfo:Lorg/fourthline/cling/model/profile/RemoteClientInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/fourthline/cling/UpnpService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/ReceivingSync;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/UpnpService;",
            "TIN;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/protocol/ReceivingAsync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/UpnpMessage;)V

    .line 55
    new-instance p1, Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    iput-object p1, p0, Lorg/fourthline/cling/protocol/ReceivingSync;->remoteClientInfo:Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingSync;->executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/protocol/ReceivingSync;->outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/protocol/ReceivingSync;->outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingSync;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getExtraResponseHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    sget-object v0, Lorg/fourthline/cling/protocol/ReceivingSync;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting extra headers on response message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingSync;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getExtraResponseHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/protocol/ReceivingSync;->outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingSync;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getExtraResponseHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected abstract executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation
.end method

.method public getOutputMessage()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/protocol/ReceivingSync;->outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    return-object v0
.end method

.method public getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/fourthline/cling/protocol/ReceivingSync;->remoteClientInfo:Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    return-object v0
.end method

.method public responseException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public responseSent(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
