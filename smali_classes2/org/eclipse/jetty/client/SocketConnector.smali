.class Lorg/eclipse/jetty/client/SocketConnector;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SocketConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/client/HttpClient$Connector;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _httpClient:Lorg/eclipse/jetty/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/eclipse/jetty/client/SocketConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/client/HttpClient;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 34
    sget-object v0, Lorg/eclipse/jetty/client/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public startConnection(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 60
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getProxy()Lorg/eclipse/jetty/client/Address;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v1

    .line 61
    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/Address;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpClient;->getConnectTimeout()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 63
    new-instance v1, Lorg/eclipse/jetty/io/bio/SocketEndPoint;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;-><init>(Ljava/net/Socket;)V

    .line 65
    new-instance v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;

    iget-object v2, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpClient;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpClient;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/eclipse/jetty/client/BlockingHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 66
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setDestination(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 67
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->onNewConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    .line 68
    iget-object v1, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpClient;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jetty/client/SocketConnector$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/eclipse/jetty/client/SocketConnector$1;-><init>(Lorg/eclipse/jetty/client/SocketConnector;Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpDestination;)V

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    return-void
.end method
