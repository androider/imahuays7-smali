.class public Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;
.super Ljava/lang/Object;
.source "RetrieveRemoteDescriptors.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final activeRetrievals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected errorsAlreadyLogged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/types/UDN;",
            ">;"
        }
    .end annotation
.end field

.field private rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

.field private final upnpService:Lorg/fourthline/cling/UpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->errorsAlreadyLogged:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->upnpService:Lorg/fourthline/cling/UpnpService;

    .line 78
    iput-object p2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    return-void
.end method


# virtual methods
.method protected describe()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    const-string v1, "Router not yet initialized"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 134
    :cond_0
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 135
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 139
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-interface {v1, v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDescriptorRetrievalHeaders(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    .line 143
    :cond_1
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending device descriptor retrieval message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 157
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device descriptor retrieval failed, no response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 158
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_2
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device descriptor retrieval failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 166
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_3
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->isContentTypeTextUDA()Z

    move-result v1

    if-nez v1, :cond_4

    .line 174
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received device descriptor without or with invalid Content-Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 176
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 180
    :cond_4
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 186
    :cond_5
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received root device descriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->describe(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_6
    :goto_0
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received empty device descriptor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 149
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device descriptor retrieval failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 151
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", possibly invalid URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method protected describe(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {v2, v3, p1}, Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;->describe(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/RemoteDevice;
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/fourthline/cling/registry/RegistrationException; {:try_start_0 .. :try_end_0} :catch_6

    .line 204
    :try_start_1
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote device described (without services) notifying listeners: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/fourthline/cling/registry/Registry;->notifyDiscoveryStart(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z

    move-result v1
    :try_end_1
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/fourthline/cling/registry/RegistrationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 207
    :try_start_2
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hydrating described device\'s services: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->describeServices(Lorg/fourthline/cling/model/meta/RemoteDevice;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->errorsAlreadyLogged:Ljava/util/List;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->errorsAlreadyLogged:Ljava/util/List;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device service description failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    new-instance v2, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device service description failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Lorg/fourthline/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    :cond_1
    return-void

    .line 221
    :cond_2
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding fully hydrated remote device to registry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/fourthline/cling/registry/Registry;->addDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    :try_end_2
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/fourthline/cling/registry/RegistrationException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_5

    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v1

    move-object v0, v1

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v0, v1

    goto/16 :goto_4

    :catch_6
    move-exception p1

    move-object v0, p1

    move-object p1, v1

    :goto_0
    const/4 v1, 0x0

    .line 248
    :goto_1
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding hydrated device to registry failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 249
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistrationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 251
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lorg/fourthline/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    goto/16 :goto_7

    :catch_7
    move-exception p1

    move-object v0, p1

    move-object p1, v1

    :goto_2
    const/4 v1, 0x0

    .line 242
    :goto_3
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not hydrate device or its services from descriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 243
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 245
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lorg/fourthline/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    goto :goto_7

    :catch_8
    move-exception p1

    move-object v0, p1

    move-object p1, v1

    :goto_4
    const/4 v1, 0x0

    .line 231
    :goto_5
    iget-object v2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->errorsAlreadyLogged:Ljava/util/List;

    iget-object v3, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 232
    iget-object v2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->errorsAlreadyLogged:Ljava/util/List;

    iget-object v3, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not validate device model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Lorg/fourthline/cling/model/ValidationException;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/ValidationError;

    .line 235
    sget-object v4, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_6

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 238
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lorg/fourthline/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    :cond_4
    :goto_7
    return-void
.end method

.method protected describeService(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;,
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;,
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 307
    :try_start_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->normalizeURI(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    new-instance v2, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    sget-object v3, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-direct {v2, v3, v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 317
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-interface {v3, v4}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDescriptorRetrievalHeaders(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 319
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/fourthline/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    .line 321
    :cond_0
    sget-object v3, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending service descriptor retrieval message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v2

    if-nez v2, :cond_1

    .line 325
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve service descriptor, no response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    .line 329
    :cond_1
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    sget-object p1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service descriptor retrieval failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    .line 337
    :cond_2
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->isContentTypeTextUDA()Z

    move-result v3

    if-nez v3, :cond_3

    .line 338
    sget-object v3, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received service descriptor without or with invalid Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 342
    :cond_3
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 343
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 348
    :cond_4
    sget-object v0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received service descriptor, hydrating service model: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object v0

    .line 352
    invoke-interface {v0, p1, v3}, Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;->describe(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/RemoteService;

    return-object p1

    .line 344
    :cond_5
    :goto_0
    sget-object p1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received empty service descriptor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    .line 309
    :catch_0
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not normalize service descriptor URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0
.end method

.method protected describeServices(Lorg/fourthline/cling/model/meta/RemoteDevice;)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;,
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;,
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->hasServices()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getServices()[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->filterExclusiveServices([Lorg/fourthline/cling/model/meta/RemoteService;)Ljava/util/List;

    move-result-object v1

    .line 261
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteService;

    .line 262
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->describeService(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 265
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_0
    sget-object v3, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping invalid service \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' of: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->hasEmbeddedDevices()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 273
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    if-nez v5, :cond_2

    goto :goto_2

    .line 277
    :cond_2
    invoke-virtual {p0, v5}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->describeServices(Lorg/fourthline/cling/model/meta/RemoteDevice;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 280
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 284
    :cond_4
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v1

    array-length v1, v1

    new-array v9, v1, [Lorg/fourthline/cling/model/meta/Icon;

    .line 285
    :goto_3
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v1

    array-length v1, v1

    if-ge v2, v1, :cond_5

    .line 286
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v1

    aget-object v1, v1, v2

    .line 287
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Icon;->deepCopy()Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v1

    aput-object v1, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 292
    :cond_5
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v5

    .line 293
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getVersion()Lorg/fourthline/cling/model/meta/UDAVersion;

    move-result-object v6

    .line 294
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v7

    .line 295
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v8

    .line 297
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v10

    move-object v4, p1

    .line 291
    invoke-virtual/range {v4 .. v11}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object p1

    return-object p1
.end method

.method protected filterExclusiveServices([Lorg/fourthline/cling/model/meta/RemoteService;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ")",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;"
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getExclusiveServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 358
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_3

    .line 361
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 363
    array-length v6, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v0, v7

    .line 364
    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/RemoteService;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/fourthline/cling/model/types/ServiceType;->implementsVersion(Lorg/fourthline/cling/model/types/ServiceType;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 365
    sget-object v8, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Including exclusive service: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 366
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 368
    :cond_1
    sget-object v9, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Excluding unwanted service: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    .line 359
    :cond_4
    :goto_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUpnpService()Lorg/fourthline/cling/UpnpService;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->upnpService:Lorg/fourthline/cling/UpnpService;

    return-object v0
.end method

.method public run()V
    .locals 6

    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    .line 93
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting early, active retrieval for URL already in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/fourthline/cling/registry/Registry;->getRemoteDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting early, already discovered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_1
    :try_start_0
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->describe()V
    :try_end_0
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    sget-object v1, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 108
    :try_start_1
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Descriptor retrieval failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 113
    :goto_2
    sget-object v2, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v1
.end method
