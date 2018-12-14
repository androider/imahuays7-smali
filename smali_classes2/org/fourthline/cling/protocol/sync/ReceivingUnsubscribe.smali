.class public Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;
.super Lorg/fourthline/cling/protocol/ReceivingSync;
.source "ReceivingUnsubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/ReceivingSync<",
        "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/protocol/ReceivingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-void
.end method


# virtual methods
.method protected executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    const-class v1, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;

    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v2

    .line 46
    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/Registry;->getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No local resource found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v1

    .line 56
    :cond_0
    sget-object v2, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found local event subscription matching relative request URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 58
    new-instance v2, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;

    .line 59
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-direct {v2, v3, v0}, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 62
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->hasNotificationHeader()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->hasCallbackHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_1
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription ID and NT or Callback in unsubcribe request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    return-object v0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->getLocalSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    move-result-object v0

    if-nez v0, :cond_3

    .line 72
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subscription ID for unsubscribe request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    return-object v0

    .line 76
    :cond_3
    sget-object v2, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistering subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/fourthline/cling/registry/Registry;->removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 78
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;)V

    goto :goto_0

    .line 80
    :cond_4
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Subscription was already removed from registry"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 83
    :goto_0
    new-instance v0, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->OK:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    return-object v0
.end method
