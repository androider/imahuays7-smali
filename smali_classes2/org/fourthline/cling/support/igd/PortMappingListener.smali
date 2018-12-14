.class public Lorg/fourthline/cling/support/igd/PortMappingListener;
.super Lorg/fourthline/cling/registry/DefaultRegistryListener;
.source "PortMappingListener.java"


# static fields
.field public static final CONNECTION_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

.field public static final IGD_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

.field public static final IP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

.field public static final PPP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected activePortMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/Service;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/PortMapping;",
            ">;>;"
        }
    .end annotation
.end field

.field protected portMappings:[Lorg/fourthline/cling/support/model/PortMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    const-class v0, Lorg/fourthline/cling/support/igd/PortMappingListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    .line 74
    new-instance v0, Lorg/fourthline/cling/model/types/UDADeviceType;

    const-string v1, "InternetGatewayDevice"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->IGD_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    .line 75
    new-instance v0, Lorg/fourthline/cling/model/types/UDADeviceType;

    const-string v1, "WANConnectionDevice"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->CONNECTION_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    .line 77
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    const-string v1, "WANIPConnection"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->IP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

    .line 78
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    const-string v1, "WANPPPConnection"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->PPP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/PortMapping;)V
    .locals 2

    const/4 v0, 0x1

    .line 86
    new-array v0, v0, [Lorg/fourthline/cling/support/model/PortMapping;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/igd/PortMappingListener;-><init>([Lorg/fourthline/cling/support/model/PortMapping;)V

    return-void
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/model/PortMapping;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lorg/fourthline/cling/registry/DefaultRegistryListener;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->portMappings:[Lorg/fourthline/cling/support/model/PortMapping;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 70
    sget-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V
    .locals 11

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lorg/fourthline/cling/support/model/PortMapping;

    .line 145
    sget-object v3, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to delete port mapping on IGD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 146
    new-instance v10, Lorg/fourthline/cling/support/igd/PortMappingListener$2;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/fourthline/cling/model/meta/Service;

    invoke-interface {p1}, Lorg/fourthline/cling/registry/Registry;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v6

    move-object v3, v10

    move-object v4, p0

    move-object v7, v8

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lorg/fourthline/cling/support/igd/PortMappingListener$2;-><init>(Lorg/fourthline/cling/support/igd/PortMappingListener;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;Lorg/fourthline/cling/support/model/PortMapping;Ljava/util/Iterator;)V

    .line 160
    invoke-virtual {v10}, Lorg/fourthline/cling/support/igd/PortMappingListener$2;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 139
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/Device;)V
    .locals 12

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/igd/PortMappingListener;->discoverConnectionService(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activating port mappings on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 101
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v8, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->portMappings:[Lorg/fourthline/cling/support/model/PortMapping;

    array-length v9, v8

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v5, v8, v10

    .line 103
    new-instance v11, Lorg/fourthline/cling/support/igd/PortMappingListener$1;

    invoke-interface {p1}, Lorg/fourthline/cling/registry/Registry;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v3

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    move-object v4, v5

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/igd/PortMappingListener$1;-><init>(Lorg/fourthline/cling/support/igd/PortMappingListener;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;Lorg/fourthline/cling/support/model/PortMapping;Ljava/util/List;)V

    .line 116
    invoke-virtual {v11}, Lorg/fourthline/cling/support/igd/PortMappingListener$1;->run()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    invoke-interface {p1, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/Device;)V
    .locals 6

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->findServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    .line 125
    iget-object v2, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 126
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/meta/Service;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device disappeared, couldn\'t delete port mappings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/igd/PortMappingListener;->handleFailureMessage(Ljava/lang/String;)V

    .line 133
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0

    throw p1
.end method

.method protected discoverConnectionService(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Service;
    .locals 5

    .line 166
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/support/igd/PortMappingListener;->IGD_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/types/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 170
    :cond_0
    sget-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->CONNECTION_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/meta/Device;->findDevices(Lorg/fourthline/cling/model/types/DeviceType;)[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    .line 171
    array-length v2, v0

    if-nez v2, :cond_1

    .line 172
    sget-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IGD doesn\'t support \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/fourthline/cling/support/igd/PortMappingListener;->CONNECTION_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 176
    aget-object v0, v0, v1

    .line 177
    sget-object v1, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using first discovered WAN connection device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lorg/fourthline/cling/support/igd/PortMappingListener;->IP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v1

    .line 180
    sget-object v2, Lorg/fourthline/cling/support/igd/PortMappingListener;->PPP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 183
    sget-object v2, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IGD doesn\'t support IP or PPP WAN connection service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method protected handleFailureMessage(Ljava/lang/String;)V
    .locals 1

    .line 190
    sget-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method
