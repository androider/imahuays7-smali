.class public abstract Lorg/fourthline/cling/controlpoint/ActionCallback;
.super Ljava/lang/Object;
.source "ActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/controlpoint/ActionCallback$Default;
    }
.end annotation


# instance fields
.field protected final actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

.field protected controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 95
    iput-object p2, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-void
.end method


# virtual methods
.method protected createDefaultFailureMessage(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)Ljava/lang/String;
    .locals 2

    const-string v0, "Error: "

    .line 167
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getFailure()Lorg/fourthline/cling/model/action/ActionException;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (HTTP response was: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V
    .locals 1

    .line 178
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;->createDefaultFailureMessage(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    return-void
.end method

.method public abstract failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
.end method

.method public getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    return-object v0
.end method

.method public declared-synchronized getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .line 116
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 119
    instance-of v1, v0, Lorg/fourthline/cling/model/meta/LocalService;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 120
    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    .line 123
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/LocalService;->getExecutor(Lorg/fourthline/cling/model/meta/Action;)Lorg/fourthline/cling/model/action/ActionExecutor;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/model/action/ActionExecutor;->execute(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 125
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getFailure()Lorg/fourthline/cling/model/action/ActionException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v0, v2}, Lorg/fourthline/cling/controlpoint/ActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto/16 :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->success(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    goto/16 :goto_0

    .line 132
    :cond_1
    instance-of v1, v0, Lorg/fourthline/cling/model/meta/RemoteService;

    if-eqz v1, :cond_5

    .line 134
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    if-nez v1, :cond_2

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback must be executed through ControlPoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    .line 143
    :try_start_0
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteService;->getControlURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/fourthline/cling/model/meta/RemoteDevice;->normalizeURI(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    iget-object v3, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-interface {v0, v3, v1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingAction(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/net/URL;)Lorg/fourthline/cling/protocol/sync/SendingAction;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->run()V

    .line 153
    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->getOutputMessage()Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;

    if-nez v0, :cond_3

    .line 156
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v0, v2}, Lorg/fourthline/cling/controlpoint/ActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {p0, v1, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 160
    :cond_4
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->success(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    goto :goto_0

    .line 145
    :catch_0
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad control URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteService;->getControlURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public declared-synchronized setControlPoint(Lorg/fourthline/cling/controlpoint/ControlPoint;)Lorg/fourthline/cling/controlpoint/ActionCallback;
    .locals 0

    monitor-enter p0

    .line 111
    :try_start_0
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p0

    throw p1
.end method

.method public abstract success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(ActionCallback) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
