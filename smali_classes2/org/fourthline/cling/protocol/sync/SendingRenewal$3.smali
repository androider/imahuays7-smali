.class Lorg/fourthline/cling/protocol/sync/SendingRenewal$3;
.super Ljava/lang/Object;
.source "SendingRenewal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/protocol/sync/SendingRenewal;->onRenewalFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/protocol/sync/SendingRenewal;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/protocol/sync/SendingRenewal;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal$3;->this$0:Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal$3;->this$0:Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    iget-object v0, v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-void
.end method
