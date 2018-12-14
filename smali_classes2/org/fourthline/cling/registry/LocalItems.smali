.class Lorg/fourthline/cling/registry/LocalItems;
.super Lorg/fourthline/cling/registry/RegistryItems;
.source "LocalItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/registry/RegistryItems<",
        "Lorg/fourthline/cling/model/meta/LocalDevice;",
        "Lorg/fourthline/cling/model/gena/LocalGENASubscription;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected discoveryOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/types/UDN;",
            "Lorg/fourthline/cling/model/DiscoveryOptions;",
            ">;"
        }
    .end annotation
.end field

.field protected lastAliveIntervalTimestamp:J

.field protected randomGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/fourthline/cling/registry/Registry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lorg/fourthline/cling/registry/RegistryItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/registry/LocalItems;->discoveryOptions:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lorg/fourthline/cling/registry/LocalItems;->lastAliveIntervalTimestamp:J

    .line 287
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/registry/LocalItems;->randomGenerator:Ljava/util/Random;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 41
    sget-object v0, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method bridge synthetic add(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->add(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-void
.end method

.method add(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/registry/RegistrationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/LocalItems;->add(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V

    return-void
.end method

.method add(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/registry/RegistrationException;
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/registry/LocalItems;->setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V

    .line 82
    iget-object p2, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 83
    sget-object p2, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring addition, device already registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    sget-object p2, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding local device to registry: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getResources(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object p2

    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 91
    iget-object v3, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/registry/RegistryImpl;->getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 92
    new-instance p1, Lorg/fourthline/cling/registry/RegistrationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "URI namespace conflict with already registered resource: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/registry/RegistrationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    iget-object v3, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v3, v2}, Lorg/fourthline/cling/registry/RegistryImpl;->addResource(Lorg/fourthline/cling/model/resource/Resource;)V

    .line 96
    sget-object v3, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registered resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_2
    sget-object p2, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding item to registry with expiration in seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 102
    new-instance p2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 103
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p2, v0, p1, v1}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered local device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/LocalItems;->isByeByeBeforeFirstAlive(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/LocalItems;->advertiseByebye(Lorg/fourthline/cling/model/meta/LocalDevice;Z)V

    .line 114
    :cond_3
    invoke-virtual {p2}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {p0, p2}, Lorg/fourthline/cling/registry/LocalItems;->isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 115
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->advertiseAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 117
    :cond_4
    iget-object p2, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {p2}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 118
    iget-object v1, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lorg/fourthline/cling/registry/LocalItems$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/fourthline/cling/registry/LocalItems$1;-><init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected advertiseAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    new-instance v1, Lorg/fourthline/cling/registry/LocalItems$4;

    invoke-direct {v1, p0, p1}, Lorg/fourthline/cling/registry/LocalItems$4;-><init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/registry/RegistryImpl;->executeAsyncProtocol(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected advertiseByebye(Lorg/fourthline/cling/model/meta/LocalDevice;Z)V
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingNotificationByebye(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationByebye;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 306
    iget-object p2, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->executeAsyncProtocol(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/protocol/SendingAsync;->run()V

    :goto_0
    return-void
.end method

.method public advertiseLocalDevices()V
    .locals 3

    .line 215
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 216
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {p0, v2}, Lorg/fourthline/cling/registry/LocalItems;->isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/registry/LocalItems;->advertiseAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method get()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 132
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems;->discoveryOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/DiscoveryOptions;

    return-object p1
.end method

.method protected isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z
    .locals 1

    .line 65
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/DiscoveryOptions;->isAdvertised()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isByeByeBeforeFirstAlive(Lorg/fourthline/cling/model/types/UDN;)Z
    .locals 1

    .line 70
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/DiscoveryOptions;->isByeByeBeforeFirstAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method maintain()V
    .locals 8

    .line 225
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 230
    iget-object v1, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAliveIntervalMillis()I

    move-result v1

    if-lez v1, :cond_2

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 233
    iget-wide v4, p0, Lorg/fourthline/cling/registry/LocalItems;->lastAliveIntervalTimestamp:J

    sub-long v6, v2, v4

    int-to-long v4, v1

    cmp-long v1, v6, v4

    if-lez v1, :cond_4

    .line 234
    iput-wide v2, p0, Lorg/fourthline/cling/registry/LocalItems;->lastAliveIntervalTimestamp:J

    .line 235
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 236
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/registry/LocalItems;->isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    sget-object v3, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flooding advertisement of local item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 238
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    .line 244
    iput-wide v1, p0, Lorg/fourthline/cling/registry/LocalItems;->lastAliveIntervalTimestamp:J

    .line 247
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 248
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/registry/LocalItems;->isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    sget-object v3, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local item has expired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 250
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 257
    sget-object v2, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refreshing local device advertisement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, v2}, Lorg/fourthline/cling/registry/LocalItems;->advertiseAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 259
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/ExpirationDetails;->stampLastRefresh()V

    goto :goto_2

    .line 263
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 264
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->getSubscriptionItems()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 265
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 266
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 269
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 270
    sget-object v2, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing expired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/gena/GENASubscription;

    invoke-virtual {p0, v2}, Lorg/fourthline/cling/registry/LocalItems;->removeSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z

    .line 272
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    sget-object v2, Lorg/fourthline/cling/model/gena/CancelReason;->EXPIRED:Lorg/fourthline/cling/model/gena/CancelReason;

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method bridge synthetic remove(Lorg/fourthline/cling/model/meta/Device;)Z
    .locals 0

    .line 41
    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->remove(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result p1

    return p1
.end method

.method remove(Lorg/fourthline/cling/model/meta/LocalDevice;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/registry/RegistrationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/LocalItems;->remove(Lorg/fourthline/cling/model/meta/LocalDevice;Z)Z

    move-result p1

    return p1
.end method

.method remove(Lorg/fourthline/cling/model/meta/LocalDevice;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/registry/RegistrationException;
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/registry/LocalItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 146
    sget-object v3, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing local device from registry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/fourthline/cling/registry/LocalItems;->setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V

    .line 149
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lorg/fourthline/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getResources(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 152
    iget-object v6, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v6, v5}, Lorg/fourthline/cling/registry/RegistryImpl;->removeResource(Lorg/fourthline/cling/model/resource/Resource;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 153
    sget-object v6, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unregistered resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->getSubscriptionItems()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 159
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/registry/RegistryItem;

    .line 163
    invoke-virtual {v3}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/LocalService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v4

    .line 165
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    sget-object v4, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing incoming subscription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    if-nez p2, :cond_2

    .line 169
    iget-object v4, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v4}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lorg/fourthline/cling/registry/LocalItems$2;

    invoke-direct {v5, p0, v3}, Lorg/fourthline/cling/registry/LocalItems$2;-><init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/registry/RegistryItem;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 180
    :cond_3
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/LocalItems;->isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v0

    if-eqz v0, :cond_4

    xor-int/lit8 v0, p2, 0x1

    .line 181
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/LocalItems;->advertiseByebye(Lorg/fourthline/cling/model/meta/LocalDevice;Z)V

    :cond_4
    if-nez p2, :cond_5

    .line 184
    iget-object p2, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {p2}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 185
    iget-object v2, p0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lorg/fourthline/cling/registry/LocalItems$3;

    invoke-direct {v3, p0, v0, p1}, Lorg/fourthline/cling/registry/LocalItems$3;-><init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    return v1

    :cond_6
    return v2
.end method

.method removeAll()V
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/LocalItems;->removeAll(Z)V

    return-void
.end method

.method removeAll(Z)V
    .locals 4

    .line 206
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 207
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 208
    invoke-virtual {p0, v3, p1}, Lorg/fourthline/cling/registry/LocalItems;->remove(Lorg/fourthline/cling/model/meta/LocalDevice;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems;->discoveryOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_0
    iget-object p2, p0, Lorg/fourthline/cling/registry/LocalItems;->discoveryOptions:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method shutdown()V
    .locals 2

    .line 278
    sget-object v0, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    const-string v1, "Clearing all registered subscriptions to local devices during shutdown"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->getSubscriptionItems()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 281
    sget-object v0, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    const-string v1, "Removing all local devices from registry during shutdown"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/LocalItems;->removeAll(Z)V

    return-void
.end method
