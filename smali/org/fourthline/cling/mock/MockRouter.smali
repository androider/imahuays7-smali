.class public Lorg/fourthline/cling/mock/MockRouter;
.super Ljava/lang/Object;
.source "MockRouter.java"

# interfaces
.implements Lorg/fourthline/cling/transport/Router;


# annotations
.annotation runtime Ljavax/enterprise/inject/Alternative;
.end annotation


# instance fields
.field public broadcastedBytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field protected configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

.field public counter:I

.field public incomingDatagramMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage;",
            ">;"
        }
    .end annotation
.end field

.field public outgoingDatagramMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

.field public receivedUpnpStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/transport/spi/UpnpStream;",
            ">;"
        }
    .end annotation
.end field

.field public sentStreamRequestMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lorg/fourthline/cling/mock/MockRouter;->counter:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->incomingDatagramMessages:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->outgoingDatagramMessages:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->receivedUpnpStreams:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->sentStreamRequestMessages:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->broadcastedBytes:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lorg/fourthline/cling/mock/MockRouter;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 65
    iput-object p2, p0, Lorg/fourthline/cling/mock/MockRouter;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    return-void
.end method


# virtual methods
.method public broadcast([B)V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->broadcastedBytes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public enable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 106
    :try_start_0
    new-array p1, p1, [Lorg/fourthline/cling/model/NetworkAddress;

    new-instance v0, Lorg/fourthline/cling/model/NetworkAddress;

    const-string v1, "127.0.0.1"

    .line 108
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I)V

    aput-object v0, p1, v2

    .line 106
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getBroadcastedBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->broadcastedBytes:Ljava/util/List;

    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method public getIncomingDatagramMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->incomingDatagramMessages:Ljava/util/List;

    return-object v0
.end method

.method public getOutgoingDatagramMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->outgoingDatagramMessages:Ljava/util/List;

    return-object v0
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public getReceivedUpnpStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/transport/spi/UpnpStream;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->receivedUpnpStreams:Ljava/util/List;

    return-object v0
.end method

.method public getSentStreamRequestMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->sentStreamRequestMessages:Ljava/util/List;

    return-object v0
.end method

.method public getStreamResponseMessage(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStreamResponseMessages()[Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleStartFailure(Lorg/fourthline/cling/transport/spi/InitializationException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    return-void
.end method

.method public isEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public received(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->incomingDatagramMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->receivedUpnpStreams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetStreamRequestMessageCounter()V
    .locals 1

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Lorg/fourthline/cling/mock/MockRouter;->counter:I

    return-void
.end method

.method public send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->sentStreamRequestMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget v0, p0, Lorg/fourthline/cling/mock/MockRouter;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/fourthline/cling/mock/MockRouter;->counter:I

    .line 132
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockRouter;->getStreamResponseMessages()[Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockRouter;->getStreamResponseMessages()[Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object p1

    iget v0, p0, Lorg/fourthline/cling/mock/MockRouter;->counter:I

    aget-object p1, p1, v0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/mock/MockRouter;->getStreamResponseMessage(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->outgoingDatagramMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    return-void
.end method
