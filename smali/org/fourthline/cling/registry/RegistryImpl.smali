.class public Lorg/fourthline/cling/registry/RegistryImpl;
.super Ljava/lang/Object;
.source "RegistryImpl.java"

# interfaces
.implements Lorg/fourthline/cling/registry/Registry;


# annotations
.annotation runtime Ljavax/enterprise/context/ApplicationScoped;
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final localItems:Lorg/fourthline/cling/registry/LocalItems;

.field protected final pendingExecutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final pendingSubscriptionsLock:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fourthline/cling/model/gena/RemoteGENASubscription;",
            ">;"
        }
    .end annotation
.end field

.field protected final registryListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fourthline/cling/registry/RegistryListener;",
            ">;"
        }
    .end annotation
.end field

.field protected registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

.field protected final remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

.field protected final resourceItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fourthline/cling/registry/RegistryItem<",
            "Ljava/net/URI;",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">;>;"
        }
    .end annotation
.end field

.field protected upnpService:Lorg/fourthline/cling/UpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/fourthline/cling/registry/Registry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 107
    new-instance v0, Lorg/fourthline/cling/registry/RemoteItems;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/RemoteItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 108
    new-instance v0, Lorg/fourthline/cling/registry/LocalItems;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/LocalItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 107
    new-instance v0, Lorg/fourthline/cling/registry/RemoteItems;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/RemoteItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 108
    new-instance v0, Lorg/fourthline/cling/registry/LocalItems;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/LocalItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 71
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Registry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    .line 75
    sget-object p1, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v0, "Starting registry background maintenance..."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 77
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addDevice(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/LocalItems;->add(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 156
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addDevice(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 1

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/LocalItems;->add(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->add(Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 172
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addListener(Lorg/fourthline/cling/registry/RegistryListener;)V
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 112
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V
    .locals 1

    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/LocalItems;->addSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 334
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 1

    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->addSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 350
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResource(Lorg/fourthline/cling/model/resource/Resource;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 319
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->addResource(Lorg/fourthline/cling/model/resource/Resource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 318
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResource(Lorg/fourthline/cling/model/resource/Resource;I)V
    .locals 2

    monitor-enter p0

    .line 323
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 324
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 325
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 322
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized advertiseLocalDevices()V
    .locals 1

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->advertiseLocalDevices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 368
    monitor-exit p0

    throw v0
.end method

.method protected createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;
    .locals 2

    .line 95
    new-instance v0, Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 97
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryMaintenanceIntervalMillis()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/fourthline/cling/registry/RegistryMaintainer;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;I)V

    return-object v0
.end method

.method declared-synchronized executeAsyncProtocol(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 461
    monitor-exit p0

    throw p1
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/LocalItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    .line 208
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/RemoteItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 209
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 206
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDevices()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 229
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 230
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RemoteItems;->get()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 232
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 228
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDevices(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 236
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 238
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/LocalItems;->get(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/RemoteItems;->get(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 241
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 235
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDevices(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 245
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 247
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/LocalItems;->get(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/RemoteItems;->get(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 244
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/registry/RegistryListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 1

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/LocalItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLocalDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/LocalGENASubscription;
    .locals 1

    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/GENASubscription;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/gena/LocalGENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRemoteDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/RemoteItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/RemoteDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRemoteDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RemoteItems;->get()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;
    .locals 1

    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->getSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/GENASubscription;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 294
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/registry/RegistryImpl;->getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 295
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 296
    monitor-exit p0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    .line 298
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 293
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 264
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource URI can not be absolute, only path and query:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 271
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/resource/Resource;

    .line 272
    invoke-virtual {v1, p1}, Lorg/fourthline/cling/model/resource/Resource;->matches(Ljava/net/URI;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 273
    monitor-exit p0

    return-object v1

    .line 279
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 283
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/resource/Resource;

    .line 284
    invoke-virtual {v1, p1}, Lorg/fourthline/cling/model/resource/Resource;->matches(Ljava/net/URI;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 285
    monitor-exit p0

    return-object v1

    :cond_4
    const/4 p1, 0x0

    .line 290
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 263
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResources()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 302
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 303
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 304
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 306
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 301
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResources(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 310
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 311
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 312
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/resource/Resource;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/resource/Resource;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 315
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 309
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getService(Lorg/fourthline/cling/model/ServiceReference;)Lorg/fourthline/cling/model/meta/Service;
    .locals 2

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/ServiceReference;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p1}, Lorg/fourthline/cling/model/ServiceReference;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceId;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 258
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 254
    monitor-exit p0

    throw p1
.end method

.method public getUpnpService()Lorg/fourthline/cling/UpnpService;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    return-object v0
.end method

.method public getWaitRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;
    .locals 3

    .line 525
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    monitor-enter v0

    .line 526
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->getRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    .line 527
    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 529
    :try_start_1
    sget-object v1, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Subscription not found, waiting for pending subscription procedure to terminate."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->getRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    move-result-object v1

    goto :goto_0

    .line 535
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 536
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized isPaused()Z
    .locals 1

    monitor-enter p0

    .line 424
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized maintain()V
    .locals 5

    monitor-enter p0

    .line 431
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Maintaining registry..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 436
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 437
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 438
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing expired resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 441
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 446
    :cond_3
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 447
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/resource/Resource;

    iget-object v3, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 449
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v1

    .line 447
    invoke-virtual {v2, v3, v1}, Lorg/fourthline/cling/model/resource/Resource;->maintain(Ljava/util/List;Lorg/fourthline/cling/model/ExpirationDetails;)V

    goto :goto_1

    .line 454
    :cond_4
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RemoteItems;->maintain()V

    .line 455
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->maintain()V

    const/4 v0, 0x1

    .line 458
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->runPendingExecutions(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 430
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 4

    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryListener;

    .line 144
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lorg/fourthline/cling/registry/RegistryImpl$2;

    invoke-direct {v3, p0, v1, p1, p2}, Lorg/fourthline/cling/registry/RegistryImpl$2;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 142
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyDiscoveryStart(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
    .locals 5

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/Registry;->getRemoteDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not notifying listeners, already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 128
    monitor-exit p0

    return p1

    .line 130
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryListener;

    .line 131
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lorg/fourthline/cling/registry/RegistryImpl$1;

    invoke-direct {v4, p0, v1, p1}, Lorg/fourthline/cling/registry/RegistryImpl$1;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Pausing registry maintenance"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->runPendingExecutions(Z)V

    .line 407
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryMaintainer;->stop()V

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 403
    monitor-exit p0

    throw v0
.end method

.method public printDebugLog()V
    .locals 3

    .line 482
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "====================================    REMOTE   ================================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RemoteItems;->get()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 486
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "====================================    LOCAL    ================================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 492
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/LocalDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 495
    :cond_1
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "====================================  RESOURCES  ================================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 498
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2

    .line 501
    :cond_2
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "================================================================================================="

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public registerPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 2

    .line 509
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeAllLocalDevices()V
    .locals 1

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->removeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 188
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllRemoteDevices()V
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RemoteItems;->removeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 192
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDevice(Lorg/fourthline/cling/model/meta/LocalDevice;)Z
    .locals 1

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/LocalItems;->remove(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
    .locals 1

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->remove(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeDevice(Lorg/fourthline/cling/model/types/UDN;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 197
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    instance-of v0, p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    if-eqz v0, :cond_0

    .line 199
    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->removeDevice(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 200
    :try_start_1
    instance-of v0, p1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    if-eqz v0, :cond_1

    .line 201
    check-cast p1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->removeDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 202
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 196
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Lorg/fourthline/cling/registry/RegistryListener;)V
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z
    .locals 1

    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/LocalItems;->removeSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 1

    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->removeSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 362
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeResource(Lorg/fourthline/cling/model/resource/Resource;)Z
    .locals 2

    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    new-instance v1, Lorg/fourthline/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume()V
    .locals 2

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-nez v0, :cond_0

    .line 414
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Resuming registry maintenance"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RemoteItems;->resume()V

    .line 416
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 417
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 412
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized runPendingExecutions(Z)V
    .locals 3

    monitor-enter p0

    .line 466
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing pending operations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 472
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 474
    :cond_2
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 475
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 465
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/LocalItems;->setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 164
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 4

    monitor-enter p0

    .line 376
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Shutting down registry..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryMaintainer;->stop()V

    .line 383
    :cond_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing final pending operations on shutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->runPendingExecutions(Z)V

    .line 386
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryListener;

    .line 387
    invoke-interface {v2, p0}, Lorg/fourthline/cling/registry/RegistryListener;->beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lorg/fourthline/cling/registry/RegistryItem;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/fourthline/cling/registry/RegistryItem;

    .line 391
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 392
    invoke-virtual {v3}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/resource/Resource;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/resource/Resource;->shutdown()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    :cond_2
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RemoteItems;->shutdown()V

    .line 396
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->shutdown()V

    .line 398
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryListener;

    .line 399
    invoke-interface {v1}, Lorg/fourthline/cling/registry/RegistryListener;->afterShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 401
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 375
    monitor-exit p0

    throw v0
.end method

.method public unregisterPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 2

    .line 516
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 518
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 520
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized update(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Z
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->update(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z
    .locals 1

    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/LocalItems;->updateSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 1

    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->updateSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 358
    monitor-exit p0

    throw p1
.end method
