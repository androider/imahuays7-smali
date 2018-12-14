.class Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;
.super Ljava/lang/Object;
.source "SendingUnsubscribe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->onUnsubscribe(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

.field final synthetic val$response:Lorg/fourthline/cling/model/message/StreamResponseMessage;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->this$0:Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v2, "Unsubscribe failed, no response received"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->this$0:Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    iget-object v0, v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    sget-object v2, Lorg/fourthline/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    invoke-virtual {v0, v2, v1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsubscribe failed, response was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->this$0:Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    iget-object v0, v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsubscribe successful, response was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->this$0:Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    iget-object v0, v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    :goto_0
    return-void
.end method
