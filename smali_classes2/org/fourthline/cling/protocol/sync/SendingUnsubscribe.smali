.class public Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SendingUnsubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync<",
        "Lorg/fourthline/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
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

    .line 41
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 3

    .line 46
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;

    .line 50
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-interface {v1, v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getEventSubscriptionHeaders(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;-><init>(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    .line 46
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 53
    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 39
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 58
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending unsubscribe request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->onUnsubscribe(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->onUnsubscribe(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    throw v0
.end method

.method protected onUnsubscribe(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->removeRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    .line 73
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;

    invoke-direct {v1, p0, p1}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;-><init>(Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
