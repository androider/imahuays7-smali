.class Lorg/fourthline/cling/protocol/sync/ReceivingEvent$2;
.super Ljava/lang/Object;
.source "ReceivingEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->executeSync()Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

.field final synthetic val$requestMessage:Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;

.field final synthetic val$subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/ReceivingEvent;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$2;->this$0:Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$2;->val$subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    iput-object p3, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$2;->val$requestMessage:Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 130
    invoke-static {}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Calling active subscription with event state variable values"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$2;->val$subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$2;->val$requestMessage:Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;

    .line 132
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$2;->val$requestMessage:Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;

    .line 133
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getStateVariableValues()Ljava/util/List;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->receive(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/Collection;)V

    return-void
.end method
