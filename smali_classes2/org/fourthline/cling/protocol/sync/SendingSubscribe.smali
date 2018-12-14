.class public Lorg/fourthline/cling/protocol/sync/SendingSubscribe;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SendingSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync<",
        "Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;",
        "Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/UpnpService;",
            "Lorg/fourthline/cling/model/gena/RemoteGENASubscription;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ">;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;

    .line 62
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v1

    .line 60
    invoke-virtual {p2, p3, v1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getEventCallbackURLs(Ljava/util/List;Lorg/fourthline/cling/model/Namespace;)Ljava/util/List;

    move-result-object p3

    .line 64
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-interface {v1, v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getEventSubscriptionHeaders(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;-><init>(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Ljava/util/List;Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    .line 56
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 68
    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    return-void
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->executeSync()Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;->hasCallbackURLs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v2, "Subscription failed, no active local callback URLs available (network disabled?)"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$1;

    invoke-direct {v2, p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$1;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v1

    .line 85
    :cond_0
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending subscription request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->registerPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0
    :try_end_1
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 101
    :try_start_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->onSubscriptionFailure()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->unregisterPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    return-object v1

    .line 105
    :cond_1
    :try_start_3
    new-instance v1, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 107
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscription failed, response was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$2;

    invoke-direct {v2, p0, v1}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$2;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->isValidHeaders()Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v2, "Subscription failed, invalid or missing (SID, Timeout) response headers"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$3;

    invoke-direct {v2, p0, v1}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$3;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 127
    :cond_3
    sget-object v2, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscription established, adding to registry, response was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->setSubscriptionId(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionDurationSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->setActualSubscriptionDurationSeconds(I)V

    .line 131
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->addRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    .line 133
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$4;

    invoke-direct {v2, p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$4;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 96
    :catch_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->onSubscriptionFailure()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 144
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v1, v2}, Lorg/fourthline/cling/registry/Registry;->unregisterPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    throw v0
.end method

.method protected onSubscriptionFailure()V
    .locals 2

    .line 149
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Subscription failed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$5;

    invoke-direct {v1, p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$5;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
