.class Lorg/fourthline/cling/protocol/sync/SendingRenewal$1;
.super Ljava/lang/Object;
.source "SendingRenewal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/protocol/sync/SendingRenewal;->executeSync()Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/protocol/sync/SendingRenewal;

.field final synthetic val$responseMessage:Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/SendingRenewal;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal$1;->this$0:Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal$1;->val$responseMessage:Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal$1;->this$0:Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    iget-object v0, v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal$1;->val$responseMessage:Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-void
.end method
