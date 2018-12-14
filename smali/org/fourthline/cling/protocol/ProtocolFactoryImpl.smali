.class public Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;
.super Ljava/lang/Object;
.source "ProtocolFactoryImpl.java"

# interfaces
.implements Lorg/fourthline/cling/protocol/ProtocolFactory;


# annotations
.annotation runtime Ljavax/enterprise/context/ApplicationScoped;
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final upnpService:Lorg/fourthline/cling/UpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lorg/fourthline/cling/protocol/ProtocolFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating ProtocolFactory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    return-void
.end method


# virtual methods
.method protected createReceivingAction(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingAction;
    .locals 2

    .line 249
    new-instance v0, Lorg/fourthline/cling/protocol/sync/ReceivingAction;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method public createReceivingAsync(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/protocol/ProtocolCreationException;
        }
    .end annotation

    .line 87
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating protocol for incoming asynchronous: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    instance-of v0, v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 94
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl$1;->$SwitchMap$org$fourthline$cling$model$message$UpnpRequest$Method:[I

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingSearch(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;

    move-result-object p1

    return-object p1

    .line 96
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->isByeBye(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->isSupportedServiceAdvertisement(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    :cond_1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingNotification(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;

    move-result-object v1

    :cond_2
    return-object v1

    .line 102
    :cond_3
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    instance-of v0, v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    if-eqz v0, :cond_5

    .line 105
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->isSupportedServiceAdvertisement(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingSearchResponse(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;

    move-result-object v1

    :cond_4
    return-object v1

    .line 109
    :cond_5
    :goto_0
    new-instance v0, Lorg/fourthline/cling/protocol/ProtocolCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol for incoming datagram message not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/protocol/ProtocolCreationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createReceivingEvent(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingEvent;
    .locals 2

    .line 261
    new-instance v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method protected createReceivingNotification(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage<",
            "Lorg/fourthline/cling/model/message/UpnpRequest;",
            ">;)",
            "Lorg/fourthline/cling/protocol/ReceivingAsync;"
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/fourthline/cling/protocol/async/ReceivingNotification;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    return-object v0
.end method

.method protected createReceivingRetrieval(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;
    .locals 2

    .line 245
    new-instance v0, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method protected createReceivingSearch(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage<",
            "Lorg/fourthline/cling/model/message/UpnpRequest;",
            ">;)",
            "Lorg/fourthline/cling/protocol/ReceivingAsync;"
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    return-object v0
.end method

.method protected createReceivingSearchResponse(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage<",
            "Lorg/fourthline/cling/model/message/UpnpResponse;",
            ">;)",
            "Lorg/fourthline/cling/protocol/ReceivingAsync;"
        }
    .end annotation

    .line 121
    new-instance v0, Lorg/fourthline/cling/protocol/async/ReceivingSearchResponse;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearchResponse;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    return-object v0
.end method

.method protected createReceivingSubscribe(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;
    .locals 2

    .line 253
    new-instance v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method public createReceivingSync(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/ReceivingSync;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/protocol/ProtocolCreationException;
        }
    .end annotation

    .line 153
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating protocol for incoming synchronous: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingRetrieval(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;

    move-result-object p1

    return-object p1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/Namespace;->isControlPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingAction(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingAction;

    move-result-object p1

    return-object p1

    .line 164
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/Namespace;->isEventSubscriptionPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingSubscribe(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    move-result-object p1

    return-object p1

    .line 168
    :cond_2
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingUnsubscribe(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;

    move-result-object p1

    return-object p1

    .line 172
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/Namespace;->isEventCallbackPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingEvent(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    move-result-object p1

    return-object p1

    .line 183
    :cond_4
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/event/cb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fixing trailing garbage in event message path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "/cb"

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "/cb"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setUri(Ljava/net/URI;)V

    .line 191
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/Namespace;->isEventCallbackPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingEvent(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    move-result-object p1

    return-object p1

    .line 198
    :cond_5
    new-instance v0, Lorg/fourthline/cling/protocol/ProtocolCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol for message type not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/protocol/ProtocolCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createReceivingUnsubscribe(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;
    .locals 2

    .line 257
    new-instance v0, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method public createSendingAction(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/net/URL;)Lorg/fourthline/cling/protocol/sync/SendingAction;
    .locals 2

    .line 214
    new-instance v0, Lorg/fourthline/cling/protocol/sync/SendingAction;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/fourthline/cling/protocol/sync/SendingAction;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/net/URL;)V

    return-object v0
.end method

.method public createSendingEvent(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingEvent;
    .locals 2

    .line 241
    new-instance v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/SendingEvent;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

    return-object v0
.end method

.method public createSendingNotificationAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;
    .locals 2

    .line 202
    new-instance v0, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-object v0
.end method

.method public createSendingNotificationByebye(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationByebye;
    .locals 2

    .line 206
    new-instance v0, Lorg/fourthline/cling/protocol/async/SendingNotificationByebye;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/async/SendingNotificationByebye;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-object v0
.end method

.method public createSendingRenewal(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingRenewal;
    .locals 2

    .line 233
    new-instance v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    return-object v0
.end method

.method public createSendingSearch(Lorg/fourthline/cling/model/message/header/UpnpHeader;I)Lorg/fourthline/cling/protocol/async/SendingSearch;
    .locals 2

    .line 210
    new-instance v0, Lorg/fourthline/cling/protocol/async/SendingSearch;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/fourthline/cling/protocol/async/SendingSearch;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V

    return-object v0
.end method

.method public createSendingSubscribe(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingSubscribe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/protocol/ProtocolCreationException;
        }
    .end annotation

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDiscoveredOnLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 220
    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/Router;->getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;

    move-result-object v0

    .line 223
    new-instance v1, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 225
    new-instance v0, Lorg/fourthline/cling/protocol/ProtocolCreationException;

    const-string v1, "Failed to obtain local stream servers (for event callback URL creation) from router"

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/ProtocolCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createSendingUnsubscribe(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;
    .locals 2

    .line 237
    new-instance v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    return-object v0
.end method

.method public getUpnpService()Lorg/fourthline/cling/UpnpService;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    return-object v0
.end method

.method protected isByeBye(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Z
    .locals 1

    .line 127
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    sget-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->BYEBYE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isSupportedServiceAdvertisement(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Z
    .locals 8

    .line 132
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getExclusiveServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 134
    :cond_0
    array-length v2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    .line 136
    :cond_1
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object v2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 140
    :cond_2
    :try_start_0
    invoke-static {p1}, Lorg/fourthline/cling/model/types/NamedServiceType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/NamedServiceType;

    move-result-object v2

    .line 141
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 142
    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/NamedServiceType;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/model/types/ServiceType;->implementsVersion(Lorg/fourthline/cling/model/types/ServiceType;)Z

    move-result v6
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    return v3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    :catch_0
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a named service type header value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 148
    :cond_4
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service advertisement not supported, dropping it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v1
.end method
