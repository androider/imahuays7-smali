.class public Lorg/fourthline/cling/transport/impl/DatagramIOImpl;
.super Ljava/lang/Object;
.source "DatagramIOImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/DatagramIO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/DatagramIO<",
        "Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;

.field protected datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

.field protected localAddress:Ljava/net/InetSocketAddress;

.field protected router:Lorg/fourthline/cling/transport/Router;

.field protected socket:Ljava/net/MulticastSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/fourthline/cling/transport/spi/DatagramIO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->configuration:Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;

    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->configuration:Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/DatagramIOConfiguration;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;Lorg/fourthline/cling/transport/spi/DatagramProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->router:Lorg/fourthline/cling/transport/Router;

    .line 77
    iput-object p3, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    sget-object p2, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating bound socket (for datagram input/output) on: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 85
    new-instance p2, Ljava/net/InetSocketAddress;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 86
    new-instance p1, Ljava/net/MulticastSocket;

    iget-object p2, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p1, p2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    .line 87
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    iget-object p2, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->configuration:Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;

    invoke-virtual {p2}, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->getTimeToLive()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 88
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    const/high16 p2, 0x40000

    invoke-virtual {p1, p2}, Ljava/net/MulticastSocket;->setReceiveBufferSize(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 90
    :try_start_2
    new-instance p2, Lorg/fourthline/cling/transport/spi/InitializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not initialize "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 75
    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 4

    .line 101
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering blocking receiving loop, listening for UDP datagrams on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->getMaxDatagramBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 107
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 109
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 111
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UDP datagram received from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->router:Lorg/fourthline/cling/transport/Router;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/fourthline/cling/transport/spi/DatagramProcessor;->read(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/Router;->received(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 125
    sget-object v1, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read datagram: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :catch_2
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Socket closed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 131
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Closing unicast socket"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    return-void

    :catch_3
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized send(Ljava/net/DatagramPacket;)V
    .locals 5

    monitor-enter p0

    .line 154
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message from address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    :try_start_2
    sget-object v1, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception sending datagram to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 163
    throw p1

    .line 161
    :catch_2
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket closed, aborting datagram send to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 153
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V
    .locals 4

    monitor-enter p0

    .line 141
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message from address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    invoke-interface {v0, p1}, Lorg/fourthline/cling/transport/spi/DatagramProcessor;->write(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)Ljava/net/DatagramPacket;

    move-result-object v0

    .line 146
    sget-object v1, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    sget-object v1, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending UDP datagram packet to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->getDestinationAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->getDestinationPort()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 150
    :cond_1
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 140
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 94
    monitor-exit p0

    throw v0
.end method
