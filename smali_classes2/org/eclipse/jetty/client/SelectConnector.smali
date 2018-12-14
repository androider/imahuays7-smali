.class Lorg/eclipse/jetty/client/SelectConnector;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "SelectConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/client/HttpClient$Connector;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;,
        Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;,
        Lorg/eclipse/jetty/client/SelectConnector$Manager;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _connectingChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/util/thread/Timeout$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final _httpClient:Lorg/eclipse/jetty/client/HttpClient;

.field private final _selectorManager:Lorg/eclipse/jetty/client/SelectConnector$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/SelectConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/client/HttpClient;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    .line 51
    new-instance v0, Lorg/eclipse/jetty/client/SelectConnector$Manager;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/client/SelectConnector$Manager;-><init>(Lorg/eclipse/jetty/client/SelectConnector;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_selectorManager:Lorg/eclipse/jetty/client/SelectConnector$Manager;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_connectingChannels:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    .line 62
    iget-object p1, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/client/SelectConnector;->addBean(Ljava/lang/Object;Z)Z

    .line 63
    iget-object p1, p0, Lorg/eclipse/jetty/client/SelectConnector;->_selectorManager:Lorg/eclipse/jetty/client/SelectConnector$Manager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/client/SelectConnector;->addBean(Ljava/lang/Object;Z)Z

    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 46
    sget-object v0, Lorg/eclipse/jetty/client/SelectConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    return-object p0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_connectingChannels:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public startConnection(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    :try_start_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getProxy()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 77
    iget-object v2, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpClient;->isConnectBlocking()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/Address;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpClient;->getConnectTimeout()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 80
    invoke-virtual {v1, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_selectorManager:Lorg/eclipse/jetty/client/SelectConnector$Manager;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/client/SelectConnector$Manager;->register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    goto :goto_3

    .line 85
    :cond_1
    invoke-virtual {v1, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 86
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/Address;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_selectorManager:Lorg/eclipse/jetty/client/SelectConnector$Manager;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/client/SelectConnector$Manager;->register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    .line 88
    new-instance v0, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;-><init>(Lorg/eclipse/jetty/client/SelectConnector;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 89
    iget-object v2, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    iget-object v3, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpClient;->getConnectTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/eclipse/jetty/client/HttpClient;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 90
    iget-object v2, p0, Lorg/eclipse/jetty/client/SelectConnector;->_connectingChannels:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 103
    :cond_2
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 97
    :cond_3
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
