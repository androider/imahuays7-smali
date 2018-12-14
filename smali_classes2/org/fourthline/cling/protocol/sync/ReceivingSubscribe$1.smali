.class Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe$1;
.super Lorg/fourthline/cling/model/gena/LocalGENASubscription;
.source "ReceivingSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->processNewSubscription(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe$1;->this$0:Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;-><init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public ended(Lorg/fourthline/cling/model/gena/CancelReason;)V
    .locals 0

    return-void
.end method

.method public established()V
    .locals 0

    return-void
.end method

.method public eventReceived()V
    .locals 2

    .line 155
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe$1;->this$0:Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe$1;->this$0:Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    .line 156
    invoke-virtual {v1}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingEvent(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingEvent;

    move-result-object v1

    .line 155
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
