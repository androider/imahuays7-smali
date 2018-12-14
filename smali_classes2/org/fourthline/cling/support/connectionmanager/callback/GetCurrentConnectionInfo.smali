.class public abstract Lorg/fourthline/cling/support/connectionmanager/callback/GetCurrentConnectionInfo;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "GetCurrentConnectionInfo.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/support/connectionmanager/callback/GetCurrentConnectionInfo;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;I)V
    .locals 2

    .line 39
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "GetCurrentConnectionInfo"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/callback/GetCurrentConnectionInfo;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "ConnectionID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/ConnectionInfo;)V
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 10

    .line 47
    :try_start_0
    new-instance v9, Lorg/fourthline/cling/support/model/ConnectionInfo;

    const-string v0, "ConnectionID"

    .line 48
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getInput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v0, "RcsID"

    .line 49
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "AVTransportID"

    .line 50
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lorg/fourthline/cling/support/model/ProtocolInfo;

    const-string v0, "ProtocolInfo"

    .line 51
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/fourthline/cling/model/ServiceReference;

    const-string v0, "PeerConnectionManager"

    .line 52
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/fourthline/cling/model/ServiceReference;-><init>(Ljava/lang/String;)V

    const-string v0, "PeerConnectionID"

    .line 53
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v0, "Direction"

    .line 54
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    move-result-object v7

    const-string v0, "Status"

    .line 55
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/ConnectionInfo;-><init>(IIILorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;Lorg/fourthline/cling/support/model/ConnectionInfo$Status;)V

    .line 58
    invoke-virtual {p0, p1, v9}, Lorg/fourthline/cling/support/connectionmanager/callback/GetCurrentConnectionInfo;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse ConnectionInfo response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/connectionmanager/callback/GetCurrentConnectionInfo;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    :goto_0
    return-void
.end method
