.class public Lorg/fourthline/cling/transport/RouterImpl;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/Router;


# annotations
.annotation runtime Ljavax/enterprise/context/ApplicationScoped;
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

.field protected final datagramIOs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Lorg/fourthline/cling/transport/spi/DatagramIO;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile enabled:Z

.field protected final multicastReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/NetworkInterface;",
            "Lorg/fourthline/cling/transport/spi/MulticastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field protected networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

.field protected protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

.field protected readLock:Ljava/util/concurrent/locks/Lock;

.field protected routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

.field protected final streamServers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Lorg/fourthline/cling/transport/spi/StreamServer;",
            ">;"
        }
    .end annotation
.end field

.field protected writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lorg/fourthline/cling/transport/Router;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 75
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 76
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 75
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 76
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    .line 94
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Router: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 96
    iput-object p2, p0, Lorg/fourthline/cling/transport/RouterImpl;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    return-void
.end method


# virtual methods
.method public broadcast([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 361
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 363
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-interface {v2, v3}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getBroadcastAddress(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 365
    sget-object v3, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending UDP datagram to broadcast address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 366
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, p1

    const/16 v5, 0x9

    invoke-direct {v3, p1, v4, v2, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 367
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/transport/spi/DatagramIO;

    invoke-interface {v1, v3}, Lorg/fourthline/cling/transport/spi/DatagramIO;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 371
    :cond_1
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router disabled, not broadcasting bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :cond_2
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    throw p1
.end method

.method public disable()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 161
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Disabling network services..."

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    const-string v3, "Stopping stream client connection management/pool"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/StreamClient;->stop()V

    .line 166
    iput-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 170
    sget-object v4, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping stream server on address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 171
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/transport/spi/StreamServer;

    invoke-interface {v3}, Lorg/fourthline/cling/transport/spi/StreamServer;->stop()V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 176
    sget-object v4, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping multicast receiver on interface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 177
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/transport/spi/MulticastReceiver;

    invoke-interface {v3}, Lorg/fourthline/cling/transport/spi/MulticastReceiver;->stop()V

    goto :goto_1

    .line 179
    :cond_2
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 182
    sget-object v4, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping datagram I/O on address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 183
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/transport/spi/DatagramIO;

    invoke-interface {v3}, Lorg/fourthline/cling/transport/spi/DatagramIO;->stop()V

    goto :goto_2

    .line 185
    :cond_3
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 187
    iput-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 188
    iput-boolean v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 193
    iget-object v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return v0

    :cond_4
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    throw v0
.end method

.method public disable(Lorg/fourthline/cling/transport/DisableRouter;)Z
    .locals 0
    .param p1    # Lorg/fourthline/cling/transport/DisableRouter;
        .annotation runtime Ljavax/enterprise/event/Observes;
        .end annotation

        .annotation runtime Ljavax/enterprise/inject/Default;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->disable()Z

    move-result p1

    return p1
.end method

.method public enable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 128
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Starting networking services..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createNetworkAddressFactory()Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 131
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getNetworkInterfaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->startInterfaceBasedTransports(Ljava/util/Iterator;)V

    .line 132
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getBindAddresses()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->startAddressBasedTransports(Ljava/util/Iterator;)V

    .line 135
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->hasUsableNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lorg/fourthline/cling/transport/spi/NoNetworkException;

    const-string v1, "No usable network interface and/or addresses available, check the log for errors."

    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/spi/NoNetworkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createStreamClient()Lorg/fourthline/cling/transport/spi/StreamClient;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z
    :try_end_1
    .catch Lorg/fourthline/cling/transport/spi/InitializationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_0
    iget-object v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return v0

    :catch_0
    move-exception v0

    .line 147
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->handleStartFailure(Lorg/fourthline/cling/transport/spi/InitializationException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    throw v0
.end method

.method public enable(Lorg/fourthline/cling/transport/EnableRouter;)Z
    .locals 0
    .param p1    # Lorg/fourthline/cling/transport/EnableRouter;
        .annotation runtime Ljavax/enterprise/event/Observes;
        .end annotation

        .annotation runtime Ljavax/enterprise/inject/Default;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->enable()Z

    move-result p1

    return p1
.end method

.method public getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 220
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 224
    iget-object v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    .line 225
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/transport/spi/StreamServer;

    if-eqz v1, :cond_1

    .line 226
    new-instance v2, Lorg/fourthline/cling/model/NetworkAddress;

    .line 229
    invoke-interface {v1}, Lorg/fourthline/cling/transport/spi/StreamServer;->getPort()I

    move-result v1

    iget-object v3, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 230
    invoke-interface {v3, p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getHardwareAddress(Ljava/net/InetAddress;)[B

    move-result-object v3

    invoke-direct {v2, p1, v1, v3}, Lorg/fourthline/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    .line 226
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_0
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return-object v0

    .line 237
    :cond_1
    :try_start_1
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 238
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-interface {v2, v3}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getHardwareAddress(Ljava/net/InetAddress;)[B

    move-result-object v2

    .line 239
    new-instance v3, Lorg/fourthline/cling/model/NetworkAddress;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/transport/spi/StreamServer;

    invoke-interface {v1}, Lorg/fourthline/cling/transport/spi/StreamServer;->getPort()I

    move-result v1

    invoke-direct {v3, v4, v1, v2}, Lorg/fourthline/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    .line 239
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    throw p1
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method protected getLockTimeoutMillis()I
    .locals 1

    const/16 v0, 0x1770

    return v0
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public handleStartFailure(Lorg/fourthline/cling/transport/spi/InitializationException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 209
    instance-of v0, p1, Lorg/fourthline/cling/transport/spi/NoNetworkException;

    if-eqz v0, :cond_0

    .line 210
    sget-object p1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    const-string v0, "Unable to initialize network router, no network found."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to initialize network router: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 213
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    return v0
.end method

.method protected lock(Ljava/util/concurrent/locks/Lock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getLockTimeoutMillis()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;I)V

    return-void
.end method

.method protected lock(Ljava/util/concurrent/locks/Lock;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 493
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to obtain lock with timeout milliseconds \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    int-to-long v0, p2

    .line 494
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    sget-object p2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquired router lock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    return-void

    .line 497
    :cond_0
    new-instance v0, Lorg/fourthline/cling/transport/RouterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router wasn\'t available exclusively after waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "ms, lock failed: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/fourthline/cling/transport/RouterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 503
    new-instance v0, Lorg/fourthline/cling/transport/RouterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interruption while waiting for exclusive access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/transport/RouterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public received(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    .locals 4

    .line 265
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router disabled, ignoring incoming message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .line 270
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createReceivingAsync(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;

    move-result-object v0

    if-nez v0, :cond_2

    .line 272
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No protocol, ignoring received message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 276
    :cond_2
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received asynchronous message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 278
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/fourthline/cling/protocol/ProtocolCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 280
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling received datagram failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V
    .locals 3

    .line 291
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    if-nez v0, :cond_0

    .line 292
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router disabled, ignoring incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .line 295
    :cond_0
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received synchronous stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 329
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No StreamClient available, not sending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :goto_0
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return-object v1

    .line 334
    :cond_0
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending via TCP unicast stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :try_start_2
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    invoke-interface {v0, p1}, Lorg/fourthline/cling/transport/spi/StreamClient;->sendRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 338
    :try_start_3
    new-instance v0, Lorg/fourthline/cling/transport/RouterException;

    const-string v1, "Sending stream request was interrupted"

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/transport/RouterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 341
    :cond_1
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Router disabled, not sending stream request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 345
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    throw p1
.end method

.method public send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 307
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/transport/spi/DatagramIO;

    .line 309
    invoke-interface {v1, p1}, Lorg/fourthline/cling/transport/spi/DatagramIO;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0

    .line 312
    :cond_0
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router disabled, not sending datagram: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    throw p1
.end method

.method public shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->disable()Z

    return-void
.end method

.method protected startAddressBasedTransports(Ljava/util/Iterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 423
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 424
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 427
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v1, v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createStreamServer(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/StreamServer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 429
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration did not create a StreamServer for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 432
    :cond_0
    :try_start_0
    sget-object v2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    sget-object v2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init stream server on address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 434
    :cond_1
    invoke-interface {v1, v0, p0}, Lorg/fourthline/cling/transport/spi/StreamServer;->init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;)V

    .line 435
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/fourthline/cling/transport/spi/InitializationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    :goto_1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v1, v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createDatagramIO(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/DatagramIO;

    move-result-object v1

    if-nez v1, :cond_2

    .line 454
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration did not create a StreamServer for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_2
    :try_start_1
    sget-object v2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    sget-object v2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init datagram I/O on address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 459
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    move-result-object v2

    invoke-interface {v1, v0, p0, v2}, Lorg/fourthline/cling/transport/spi/DatagramIO;->init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;Lorg/fourthline/cling/transport/spi/DatagramProcessor;)V

    .line 460
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/fourthline/cling/transport/spi/InitializationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 473
    throw p1

    :catch_1
    move-exception v1

    .line 438
    invoke-static {v1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 439
    instance-of v3, v2, Ljava/net/BindException;

    if-eqz v3, :cond_5

    .line 440
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to init StreamServer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 441
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 442
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Initialization exception root cause"

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    :cond_4
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing unusable address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 444
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 447
    :cond_5
    throw v1

    .line 478
    :cond_6
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 480
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting stream server on address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 481
    :cond_7
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getStreamServerExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 484
    :cond_8
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 485
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 486
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting datagram I/O on address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 487
    :cond_9
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDatagramIOExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_a
    return-void
.end method

.method protected startInterfaceBasedTransports(Ljava/util/Iterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/net/NetworkInterface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 379
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 383
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v1, v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createMulticastReceiver(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/MulticastReceiver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 385
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration did not create a MulticastReceiver for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_0
    :try_start_0
    sget-object v2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    sget-object v2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init multicast receiver on interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 390
    :cond_1
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 394
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    move-result-object v3

    .line 390
    invoke-interface {v1, v0, p0, v2, v3}, Lorg/fourthline/cling/transport/spi/MulticastReceiver;->init(Ljava/net/NetworkInterface;Lorg/fourthline/cling/transport/Router;Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;Lorg/fourthline/cling/transport/spi/DatagramProcessor;)V

    .line 397
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/fourthline/cling/transport/spi/InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 410
    throw p1

    .line 415
    :cond_2
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 416
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting multicast receiver on interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 418
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getMulticastReceiverExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected unlock(Ljava/util/concurrent/locks/Lock;)V
    .locals 3

    .line 514
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing router lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 515
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
