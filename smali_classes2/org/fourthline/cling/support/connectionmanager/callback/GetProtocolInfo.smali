.class public abstract Lorg/fourthline/cling/support/connectionmanager/callback/GetProtocolInfo;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "GetProtocolInfo.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/connectionmanager/callback/GetProtocolInfo;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 2

    .line 37
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "GetProtocolInfo"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    return-void
.end method


# virtual methods
.method public abstract received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;)V
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Sink"

    .line 43
    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v1

    const-string v2, "Source"

    .line 44
    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 46
    new-instance v3, Lorg/fourthline/cling/support/model/ProtocolInfos;

    .line 48
    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/fourthline/cling/support/model/ProtocolInfos;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v1, Lorg/fourthline/cling/support/model/ProtocolInfos;

    .line 49
    invoke-virtual {v2}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/ProtocolInfos;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 46
    :goto_1
    invoke-virtual {p0, p1, v3, v1}, Lorg/fourthline/cling/support/connectionmanager/callback/GetProtocolInfo;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 53
    new-instance v2, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v3, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t parse ProtocolInfo response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    .line 56
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/connectionmanager/callback/GetProtocolInfo;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    :goto_2
    return-void
.end method
