.class public Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;
.super Lorg/fourthline/cling/protocol/ReceivingSync;
.source "ReceivingRetrieval.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/ReceivingSync<",
        "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/protocol/ReceivingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-void
.end method


# virtual methods
.method protected createResponse(Ljava/net/URI;Lorg/fourthline/cling/model/resource/Resource;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 3

    .line 92
    :try_start_0
    const-class v0, Lorg/fourthline/cling/model/resource/DeviceDescriptorResource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found local device matching relative request URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Lorg/fourthline/cling/model/resource/Resource;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 98
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object p2

    invoke-interface {p2}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object p2

    invoke-interface {p2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object p2

    .line 101
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v1

    .line 99
    invoke-interface {p2, p1, v0, v1}, Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;->generate(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/profile/RemoteClientInfo;Lorg/fourthline/cling/model/Namespace;)Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance p2, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    new-instance v0, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    sget-object v1, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/seamless/util/MimeType;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/seamless/util/MimeType;)V

    invoke-direct {p2, p1, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/message/header/ContentTypeHeader;)V

    goto/16 :goto_0

    .line 108
    :cond_0
    const-class v0, Lorg/fourthline/cling/model/resource/ServiceDescriptorResource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found local service matching relative request URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Lorg/fourthline/cling/model/resource/Resource;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/LocalService;

    .line 115
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object p2

    invoke-interface {p2}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object p2

    invoke-interface {p2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object p2

    .line 116
    invoke-interface {p2, p1}, Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;->generate(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;

    move-result-object p1

    .line 117
    new-instance p2, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    new-instance v0, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    sget-object v1, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/seamless/util/MimeType;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/seamless/util/MimeType;)V

    invoke-direct {p2, p1, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/message/header/ContentTypeHeader;)V

    goto/16 :goto_0

    .line 122
    :cond_1
    const-class v0, Lorg/fourthline/cling/model/resource/IconResource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found local icon matching relative request URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Lorg/fourthline/cling/model/resource/Resource;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/Icon;

    .line 126
    new-instance p2, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Icon;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Icon;->getMimeType()Lorg/seamless/util/MimeType;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>([BLorg/seamless/util/MimeType;)V

    goto :goto_0

    .line 130
    :cond_2
    sget-object p1, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring GET for found local resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 135
    sget-object p2, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error generating requested device/service descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 136
    sget-object p2, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Exception root cause: "

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    new-instance p2, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    sget-object p1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {p2, p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    .line 140
    :goto_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/fourthline/cling/model/message/header/ServerHeader;

    invoke-direct {v1}, Lorg/fourthline/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-object p2
.end method

.method protected executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->hasHostHeader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring message, missing HOST header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/fourthline/cling/registry/Registry;->getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->onResourceNotFound(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v1

    if-nez v1, :cond_1

    .line 78
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No local resource found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;->createResponse(Ljava/net/URI;Lorg/fourthline/cling/model/resource/Resource;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected onResourceNotFound(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
