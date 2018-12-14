.class public abstract Lorg/fourthline/cling/support/igd/callback/GetStatusInfo;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "GetStatusInfo.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 2

    .line 32
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "GetStatusInfo"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    return-void
.end method


# virtual methods
.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 5

    :try_start_0
    const-string v0, "NewConnectionStatus"

    .line 40
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/support/model/Connection$Status;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Connection$Status;

    move-result-object v0

    const-string v1, "NewLastConnectionError"

    .line 43
    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/support/model/Connection$Error;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Connection$Error;

    move-result-object v1

    .line 45
    new-instance v2, Lorg/fourthline/cling/support/model/Connection$StatusInfo;

    const-string v3, "NewUptime"

    invoke-virtual {p1, v3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v2, v0, v3, v1}, Lorg/fourthline/cling/support/model/Connection$StatusInfo;-><init>(Lorg/fourthline/cling/support/model/Connection$Status;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/model/Connection$Error;)V

    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/igd/callback/GetStatusInfo;->success(Lorg/fourthline/cling/support/model/Connection$StatusInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid status or last error string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/igd/callback/GetStatusInfo;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    :goto_0
    return-void
.end method

.method protected abstract success(Lorg/fourthline/cling/support/model/Connection$StatusInfo;)V
.end method
