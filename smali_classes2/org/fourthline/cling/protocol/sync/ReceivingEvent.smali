.class public Lorg/fourthline/cling/protocol/sync/ReceivingEvent;
.super Lorg/fourthline/cling/protocol/ReceivingSync;
.source "ReceivingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/ReceivingSync<",
        "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
        "Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/protocol/ReceivingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 43
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->executeSync()Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->isContentTypeTextUDA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received without or with invalid Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    const-class v1, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;

    .line 62
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v2

    .line 60
    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/Registry;->getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;

    if-nez v0, :cond_1

    .line 66
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No local resource found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->NOT_FOUND:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-object v0

    .line 70
    :cond_1
    new-instance v1, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;

    .line 71
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/model/meta/RemoteService;)V

    .line 74
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSubscrptionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 75
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription ID missing in event request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-object v0

    .line 79
    :cond_2
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->hasValidNotificationHeaders()Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing NT and/or NTS headers in event request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-object v0

    .line 84
    :cond_3
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->hasValidNotificationHeaders()Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NT and/or NTS headers in event request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-object v0

    .line 89
    :cond_4
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    if-nez v0, :cond_5

    .line 90
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sequence missing in event request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-object v0

    .line 96
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getGenaEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;->readBody(Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSubscrptionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->getWaitRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    move-result-object v0

    if-nez v0, :cond_6

    .line 123
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid subscription ID, no active subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 124
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-object v0

    .line 127
    :cond_6
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$2;

    invoke-direct {v3, p0, v0, v1}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$2;-><init>(Lorg/fourthline/cling/protocol/sync/ReceivingEvent;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 139
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>()V

    return-object v0

    :catch_0
    move-exception v0

    .line 99
    sget-object v2, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read event message request body, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v2

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSubscrptionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/fourthline/cling/registry/Registry;->getRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 105
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$1;

    invoke-direct {v3, p0, v1, v0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$1;-><init>(Lorg/fourthline/cling/protocol/sync/ReceivingEvent;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/UnsupportedDataException;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    :cond_7
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-object v0
.end method
