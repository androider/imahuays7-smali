.class public Lorg/fourthline/cling/protocol/sync/SendingEvent;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SendingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync<",
        "Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field protected final requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

.field protected final subscriptionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V
    .locals 4

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 54
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->subscriptionId:Ljava/lang/String;

    .line 56
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCallbackURLs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    .line 58
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCallbackURLs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 59
    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    new-instance v3, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    invoke-direct {v3, p2, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;-><init>(Lorg/fourthline/cling/model/gena/GENASubscription;Ljava/net/URL;)V

    aput-object v3, v2, v0

    .line 60
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getGenaEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;->writeBody(Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 68
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->incrementSequence()V

    return-void
.end method


# virtual methods
.method protected executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 73
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending event for subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->subscriptionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 79
    iget-object v4, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 80
    sget-object v4, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending initial event message to callback URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :cond_0
    sget-object v4, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending event message \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' to callback URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 87
    :goto_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v2

    .line 88
    sget-object v4, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received event callback response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
