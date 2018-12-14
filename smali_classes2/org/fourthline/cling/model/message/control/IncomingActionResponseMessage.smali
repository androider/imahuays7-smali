.class public Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;
.super Lorg/fourthline/cling/model/message/StreamResponseMessage;
.source "IncomingActionResponseMessage.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/control/ActionResponseMessage;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-void
.end method


# virtual methods
.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isFailedNonRecoverable()Z
    .locals 2

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->METHOD_NOT_SUPPORTED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 42
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 43
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->hasBody()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailedRecoverable()Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
