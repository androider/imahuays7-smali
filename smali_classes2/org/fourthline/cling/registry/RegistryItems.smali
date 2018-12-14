.class abstract Lorg/fourthline/cling/registry/RegistryItems;
.super Ljava/lang/Object;
.source "RegistryItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/fourthline/cling/model/meta/Device;",
        "S:",
        "Lorg/fourthline/cling/model/gena/GENASubscription;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final deviceItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fourthline/cling/registry/RegistryItem<",
            "Lorg/fourthline/cling/model/types/UDN;",
            "TD;>;>;"
        }
    .end annotation
.end field

.field protected final registry:Lorg/fourthline/cling/registry/RegistryImpl;

.field protected final subscriptionItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fourthline/cling/registry/RegistryItem<",
            "Ljava/lang/String;",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->subscriptionItems:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    return-void
.end method


# virtual methods
.method abstract add(Lorg/fourthline/cling/model/meta/Device;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method

.method addSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/fourthline/cling/registry/RegistryItem;

    .line 142
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/GENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/GENASubscription;->getActualDurationSeconds()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 147
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryItems;->subscriptionItems:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method contains(Lorg/fourthline/cling/model/meta/Device;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->contains(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result p1

    return p1
.end method

.method contains(Lorg/fourthline/cling/model/types/UDN;)Z
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    new-instance v1, Lorg/fourthline/cling/registry/RegistryItem;

    invoke-direct {v1, p1}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method get()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 124
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 125
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method get(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            ")",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 95
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

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

    .line 96
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/Device;

    invoke-virtual {v2, p1}, Lorg/fourthline/cling/model/meta/Device;->findDevices(Lorg/fourthline/cling/model/types/DeviceType;)[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    check-cast v2, [Lorg/fourthline/cling/model/meta/Device;

    if-eqz v2, :cond_0

    .line 98
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method get(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            ")",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 112
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

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

    .line 114
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/Device;

    invoke-virtual {v2, p1}, Lorg/fourthline/cling/model/meta/Device;->findDevices(Lorg/fourthline/cling/model/types/ServiceType;)[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    check-cast v2, [Lorg/fourthline/cling/model/meta/Device;

    if-eqz v2, :cond_0

    .line 116
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            "Z)TD;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 72
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/Device;

    .line 73
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    if-nez p2, :cond_0

    .line 77
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/Device;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/model/meta/Device;->findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method getDeviceItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/fourthline/cling/registry/RegistryItem<",
            "Lorg/fourthline/cling/model/types/UDN;",
            "TD;>;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    return-object v0
.end method

.method getResources(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/registry/RegistrationException;
        }
    .end annotation

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/Namespace;->getResources(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object p1
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 175
    new-instance v0, Lorg/fourthline/cling/registry/RegistrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource discover error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/ValidationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/registry/RegistrationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method getSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/GENASubscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->subscriptionItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 164
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/gena/GENASubscription;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getSubscriptionItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/fourthline/cling/registry/RegistryItem<",
            "Ljava/lang/String;",
            "TS;>;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->subscriptionItems:Ljava/util/Set;

    return-object v0
.end method

.method abstract maintain()V
.end method

.method abstract remove(Lorg/fourthline/cling/model/meta/Device;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation
.end method

.method abstract removeAll()V
.end method

.method removeSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->subscriptionItems:Ljava/util/Set;

    new-instance v1, Lorg/fourthline/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/GENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract shutdown()V
.end method

.method updateSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->removeSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->addSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
