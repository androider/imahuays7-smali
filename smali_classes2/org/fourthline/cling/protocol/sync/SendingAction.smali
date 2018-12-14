.class public Lorg/fourthline/cling/protocol/sync/SendingAction;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SendingAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync<",
        "Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;",
        "Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/net/URL;)V
    .locals 1

    .line 58
    new-instance v0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;

    invoke-direct {v0, p2, p3}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/net/URL;)V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 59
    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    return-void
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->executeSync()Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->invokeRemote(Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected handleResponse(Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .line 138
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received response for outgoing call, reading SOAP response body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getSoapActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-interface {v0, p1, v1}, Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;->readBody(Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 141
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading SOAP body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 142
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Exception root cause: "

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    new-instance v0, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading SOAP response message. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Lorg/fourthline/cling/model/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Z)V

    throw v0
.end method

.method protected handleResponseFailure(Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .line 154
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    const-string v1, "Received response with Internal Server Error, reading SOAP failure message"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getSoapActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-interface {v0, p1, v1}, Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;->readBody(Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 157
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading SOAP body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Exception root cause: "

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    new-instance v0, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading SOAP response failure message. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Lorg/fourthline/cling/model/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Z)V

    throw v0
.end method

.method protected invokeRemote(Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    .line 69
    sget-object v1, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending outgoing action call \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fourthline/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' to remote service of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/sync/SendingAction;->sendRemoteRequest(Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object p1

    if-nez p1, :cond_0

    .line 76
    sget-object p1, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    const-string v1, "No connection or no no response received, returning null"

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lorg/fourthline/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v3, "Connection error or no response received"

    invoke-direct {v1, v2, v3}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    return-object v0

    .line 81
    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;

    invoke-direct {v1, p1}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;-><init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/action/ActionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :try_start_1
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->isFailedNonRecoverable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    sget-object p1, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response was a non-recoverable failure: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 85
    new-instance p1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-recoverable remote execution failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->isFailedRecoverable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/sync/SendingAction;->handleResponseFailure(Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/sync/SendingAction;->handleResponse(Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;)V
    :try_end_1
    .catch Lorg/fourthline/cling/model/action/ActionException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 98
    :goto_1
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote action invocation failed, returning Internal Server Error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    if-eqz v1, :cond_4

    .line 100
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    return-object v1

    .line 101
    :cond_4
    :goto_2
    new-instance p1, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;

    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p1, v0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-object p1
.end method

.method protected sendRemoteRequest(Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;,
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 112
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing SOAP request body of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getSoapActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-interface {v0, p1, v1}, Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;->writeBody(Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 115
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    const-string v1, "Sending SOAP body of message as stream to remote device"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object p1
    :try_end_0
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing SOAP body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Exception root cause: "

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing request message. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 118
    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 119
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_2

    .line 120
    sget-object p1, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    sget-object p1, Lorg/fourthline/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending action request message was interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 123
    :cond_1
    new-instance p1, Lorg/fourthline/cling/model/action/ActionCancelledException;

    check-cast v0, Ljava/lang/InterruptedException;

    invoke-direct {p1, v0}, Lorg/fourthline/cling/model/action/ActionCancelledException;-><init>(Ljava/lang/InterruptedException;)V

    throw p1

    .line 125
    :cond_2
    throw p1
.end method
