.class public Lorg/fourthline/cling/model/meta/RemoteDevice;
.super Lorg/fourthline/cling/model/meta/Device;
.source "RemoteDevice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/meta/Device<",
        "Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;",
        "Lorg/fourthline/cling/model/meta/RemoteDevice;",
        "Lorg/fourthline/cling/model/meta/RemoteService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 109
    invoke-direct/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 69
    new-array v5, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v1, 0x0

    aput-object p4, v5, v1

    new-array v6, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    aput-object p5, v6, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 74
    new-array v5, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v1, 0x0

    aput-object p4, v5, v1

    new-array v6, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    aput-object p5, v6, v1

    new-array v7, v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    aput-object p6, v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 79
    new-array v5, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 84
    new-array v5, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 49
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    const/4 v0, 0x0

    aput-object p4, v6, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/RemoteService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 54
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    const/4 v1, 0x0

    aput-object p4, v6, v1

    new-array v7, v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    aput-object p5, v7, v1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 89
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    const/4 v0, 0x0

    aput-object p5, v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 94
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    const/4 v1, 0x0

    aput-object p5, v6, v1

    new-array v7, v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    aput-object p6, v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 99
    invoke-direct/range {p0 .. p5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 104
    invoke-direct/range {p0 .. p6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 59
    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 64
    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method


# virtual methods
.method public discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;
    .locals 8

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getServices()[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-nez v5, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    new-instance v6, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;

    invoke-virtual {p1, v5}, Lorg/fourthline/cling/model/Namespace;->getEventCallbackPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/RemoteService;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->hasEmbeddedDevices()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-nez v4, :cond_2

    goto :goto_3

    .line 190
    :cond_2
    invoke-virtual {v4, p1}, Lorg/fourthline/cling/model/meta/Device;->discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 194
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/model/resource/Resource;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/resource/Resource;

    return-object p1
.end method

.method public bridge synthetic findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/Device;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object p1

    return-object p1
.end method

.method public findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 0

    .line 209
    invoke-virtual {p0, p1, p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->find(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    return-object p1
.end method

.method public bridge synthetic getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDevice;->embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDevice;->embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;

    check-cast v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getRoot()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getRoot()Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 2

    .line 199
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    move-object v0, p0

    .line 201
    :goto_0
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getParentDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getParentDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getServices()[Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDevice;->services:[Lorg/fourthline/cling/model/meta/Service;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDevice;->services:[Lorg/fourthline/cling/model/meta/Service;

    check-cast v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getServices()[Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getServices()[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;Ljava/util/List;)Lorg/fourthline/cling/model/meta/Device;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 41
    move-object v6, p6

    check-cast v6, [Lorg/fourthline/cling/model/meta/RemoteService;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            "Lorg/fourthline/cling/model/meta/UDAVersion;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 142
    new-instance v8, Lorg/fourthline/cling/model/meta/RemoteDevice;

    new-instance v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    .line 143
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    move-object v2, p1

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)V

    .line 146
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, v8

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteDevice;-><init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    return-object v8
.end method

.method public newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "[",
            "Lorg/fourthline/cling/model/meta/Action<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;[",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/RemoteService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 154
    new-instance v8, Lorg/fourthline/cling/model/meta/RemoteService;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteService;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    return-object v8
.end method

.method public bridge synthetic newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/Service;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 41
    invoke-virtual/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object p1

    return-object p1
.end method

.method public newServiceArray(I)[Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 0

    .line 168
    new-array p1, p1, [Lorg/fourthline/cling/model/meta/RemoteService;

    return-object p1
.end method

.method public bridge synthetic newServiceArray(I)[Lorg/fourthline/cling/model/meta/Service;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newServiceArray(I)[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object p1

    return-object p1
.end method

.method public normalizeURI(Ljava/net/URI;)Ljava/net/URL;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/seamless/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/seamless/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object p1

    return-object p1
.end method

.method public toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;",
            ">;)[",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    return-object p1
.end method

.method public toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;)[",
            "Lorg/fourthline/cling/model/meta/RemoteService;"
        }
    .end annotation

    .line 173
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/RemoteService;

    return-object p1
.end method

.method public bridge synthetic toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object p1

    return-object p1
.end method
