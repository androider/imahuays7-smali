.class public Lorg/fourthline/cling/protocol/async/ReceivingNotification;
.super Lorg/fourthline/cling/protocol/ReceivingAsync;
.source "ReceivingNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/ReceivingAsync<",
        "Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lorg/fourthline/cling/protocol/async/ReceivingNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/UpnpService;",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage<",
            "Lorg/fourthline/cling/model/message/UpnpRequest;",
            ">;)V"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/ReceivingAsync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/UpnpMessage;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;->getUDN()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring notification message without UDN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;)V

    .line 89
    sget-object v2, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received device notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 93
    :try_start_0
    new-instance v2, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-direct {v2, v1}, Lorg/fourthline/cling/model/meta/RemoteDevice;-><init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;->isAliveMessage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    sget-object v3, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received device ALIVE advertisement, descriptor location is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v3

    if-nez v3, :cond_1

    .line 107
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring message without location URL header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void

    .line 111
    :cond_1
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 112
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring message without max-age header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/fourthline/cling/registry/Registry;->update(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    sget-object v1, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote device was already known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void

    .line 123
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;

    .line 124
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    .line 123
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;->isByeByeMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    const-string v1, "Received device BYEBYE advertisement"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->removeDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 132
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed remote device from registry: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_5
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unknown notification message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 95
    sget-object v2, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validation errors of device during discovery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lorg/fourthline/cling/model/ValidationException;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/ValidationError;

    .line 97
    sget-object v2, Lorg/fourthline/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    return-void
.end method
