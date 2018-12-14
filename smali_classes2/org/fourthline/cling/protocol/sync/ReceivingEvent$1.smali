.class Lorg/fourthline/cling/protocol/sync/ReceivingEvent$1;
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

.field final synthetic val$ex:Lorg/fourthline/cling/model/UnsupportedDataException;

.field final synthetic val$subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/ReceivingEvent;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/UnsupportedDataException;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$1;->this$0:Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$1;->val$subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    iput-object p3, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$1;->val$ex:Lorg/fourthline/cling/model/UnsupportedDataException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$1;->val$subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent$1;->val$ex:Lorg/fourthline/cling/model/UnsupportedDataException;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->invalidMessage(Lorg/fourthline/cling/model/UnsupportedDataException;)V

    return-void
.end method
