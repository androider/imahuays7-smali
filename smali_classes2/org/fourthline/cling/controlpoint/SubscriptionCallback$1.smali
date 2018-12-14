.class Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;
.super Lorg/fourthline/cling/model/gena/LocalGENASubscription;
.source "SubscriptionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->establishLocalSubscription(Lorg/fourthline/cling/model/meta/LocalService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;-><init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public ended(Lorg/fourthline/cling/model/gena/CancelReason;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 161
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v1, p0, p1, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->ended(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public established()V
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v1, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 154
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v1, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->established(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public eventReceived()V
    .locals 4

    .line 166
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local service state updated, notifying callback, sequence is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v1, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 169
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->incrementSequence()V

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 147
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v1, v2, v2, p1}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
