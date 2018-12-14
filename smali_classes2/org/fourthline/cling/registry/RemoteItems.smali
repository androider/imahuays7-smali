.class Lorg/fourthline/cling/registry/RemoteItems;
.super Lorg/fourthline/cling/registry/RegistryItems;
.source "RemoteItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/registry/RegistryItems<",
        "Lorg/fourthline/cling/model/meta/RemoteDevice;",
        "Lorg/fourthline/cling/model/gena/RemoteGENASubscription;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/fourthline/cling/registry/Registry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/fourthline/cling/registry/RegistryItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    return-void
.end method


# virtual methods
.method bridge synthetic add(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 0

    .line 41
    check-cast p1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->add(Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    return-void
.end method

.method add(Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 8

    .line 63
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RemoteItems;->update(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring addition, device already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->getResources(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v0

    .line 70
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 71
    sget-object v5, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Validating remote device resource; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 72
    iget-object v5, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/fourthline/cling/registry/RegistryImpl;->getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 73
    new-instance p1, Lorg/fourthline/cling/registry/RegistrationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI namespace conflict with already registered resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/fourthline/cling/registry/RegistrationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_2
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 78
    iget-object v4, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v4, v3}, Lorg/fourthline/cling/registry/RegistryImpl;->addResource(Lorg/fourthline/cling/model/resource/Resource;)V

    .line 79
    sget-object v4, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added remote device resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :cond_3
    new-instance v0, Lorg/fourthline/cling/registry/RegistryItem;

    .line 84
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 86
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRemoteDeviceMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 87
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRemoteDeviceMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v2

    .line 86
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 90
    sget-object v1, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding hydrated remote device to registry with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/ExpirationDetails;->getMaxAgeSeconds()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " seconds expiration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-------------------------- START Registry Namespace -----------------------------------\n"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getResources()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/resource/Resource;

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v1, "-------------------------- END Registry Namespace -----------------------------------"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    sget-object v1, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 106
    :cond_6
    sget-object v0, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completely hydrated remote device graph available, calling listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryListener;

    .line 108
    iget-object v2, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lorg/fourthline/cling/registry/RemoteItems$1;

    invoke-direct {v3, p0, v1, p1}, Lorg/fourthline/cling/registry/RemoteItems$1;-><init>(Lorg/fourthline/cling/registry/RemoteItems;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method maintain()V
    .locals 7

    .line 253
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 258
    sget-object v3, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    sget-object v3, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' expires in seconds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/ExpirationDetails;->getSecondsUntilExpiration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 261
    :cond_2
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 265
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 266
    sget-object v2, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 267
    sget-object v2, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing expired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 268
    :cond_4
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/registry/RemoteItems;->remove(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z

    goto :goto_1

    .line 272
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 273
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->getSubscriptionItems()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 274
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 275
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 278
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 279
    sget-object v2, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 280
    sget-object v2, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Renewing outgoing subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 281
    :cond_8
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/registry/RemoteItems;->renewOutgoingSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method bridge synthetic remove(Lorg/fourthline/cling/model/meta/Device;)Z
    .locals 0

    .line 41
    check-cast p1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->remove(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z

    move-result p1

    return p1
.end method

.method remove(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/RemoteItems;->remove(Lorg/fourthline/cling/model/meta/RemoteDevice;Z)Z

    move-result p1

    return p1
.end method

.method remove(Lorg/fourthline/cling/model/meta/RemoteDevice;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/registry/RegistrationException;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/registry/RemoteItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 180
    sget-object v3, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing remote device from registry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RemoteItems;->getResources(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object p1

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    .line 184
    iget-object v5, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v5, v4}, Lorg/fourthline/cling/registry/RegistryImpl;->removeResource(Lorg/fourthline/cling/model/resource/Resource;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    sget-object v5, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistered resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->getSubscriptionItems()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 191
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 195
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v3

    .line 197
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    sget-object v3, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing outgoing subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 199
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    if-nez p2, :cond_2

    .line 201
    iget-object v3, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v3}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lorg/fourthline/cling/registry/RemoteItems$3;

    invoke-direct {v4, p0, v2}, Lorg/fourthline/cling/registry/RemoteItems$3;-><init>(Lorg/fourthline/cling/registry/RemoteItems;Lorg/fourthline/cling/registry/RegistryItem;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 214
    iget-object p1, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {p1}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/registry/RegistryListener;

    .line 215
    iget-object v2, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lorg/fourthline/cling/registry/RemoteItems$4;

    invoke-direct {v3, p0, p2, v0}, Lorg/fourthline/cling/registry/RemoteItems$4;-><init>(Lorg/fourthline/cling/registry/RemoteItems;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 226
    :cond_4
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->getDeviceItems()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lorg/fourthline/cling/registry/RegistryItem;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v1

    :cond_5
    return v2
.end method

.method removeAll()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RemoteItems;->removeAll(Z)V

    return-void
.end method

.method removeAll(Z)V
    .locals 4

    .line 239
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->get()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->get()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 240
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 241
    invoke-virtual {p0, v3, p1}, Lorg/fourthline/cling/registry/RemoteItems;->remove(Lorg/fourthline/cling/model/meta/RemoteDevice;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected renewOutgoingSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    iget-object v1, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 317
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingRenewal(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    move-result-object p1

    .line 316
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->executeAsyncProtocol(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 286
    sget-object v0, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    const-string v1, "Updating remote device expiration timestamps on resume"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->getDeviceItems()Ljava/util/Set;

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

    .line 289
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    .line 292
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/registry/RemoteItems;->update(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method shutdown()V
    .locals 3

    .line 297
    sget-object v0, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    const-string v1, "Cancelling all outgoing subscriptions to remote devices during shutdown"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->getSubscriptionItems()Ljava/util/Set;

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

    .line 300
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 304
    iget-object v2, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v2

    .line 305
    invoke-interface {v2, v1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingUnsubscribe(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->run()V

    goto :goto_1

    .line 309
    :cond_1
    sget-object v0, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    const-string v1, "Removing all remote devices from registry during shutdown"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 310
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RemoteItems;->removeAll(Z)V

    return-void
.end method

.method start()V
    .locals 0

    return-void
.end method

.method update(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Z
    .locals 5

    .line 121
    iget-object v0, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getLocalDevices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 122
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/fourthline/cling/model/meta/LocalDevice;->findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    sget-object p1, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    const-string v0, "Ignoring update, a local device graph contains UDN"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v2

    .line 128
    :cond_1
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/registry/RemoteItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    if-eqz v0, :cond_5

    .line 131
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->isRoot()Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    sget-object v1, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating root device of embedded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getRoot()Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    .line 137
    :cond_2
    new-instance v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 138
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v3

    iget-object v4, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 140
    invoke-virtual {v4}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRemoteDeviceMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object p1, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 141
    invoke-virtual {p1}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRemoteDeviceMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object p1

    .line 140
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, v3, v0, p1}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 145
    sget-object p1, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating expiration of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->getDeviceItems()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RemoteItems;->getDeviceItems()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object p1, Lorg/fourthline/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote device updated, calling listeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {p1}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 151
    iget-object v3, p0, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v3}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lorg/fourthline/cling/registry/RemoteItems$2;

    invoke-direct {v4, p0, v0, v1}, Lorg/fourthline/cling/registry/RemoteItems$2;-><init>(Lorg/fourthline/cling/registry/RemoteItems;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/registry/RegistryItem;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    return v1
.end method
