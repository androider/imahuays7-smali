.class public Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;
.super Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;
.source "BlockingChannelConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private transient _acceptChannel:Ljava/nio/channels/ServerSocketChannel;

.field private final _endpoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;-><init>()V

    .line 61
    new-instance v0, Lorg/eclipse/jetty/util/ConcurrentHashSet;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_endpoints:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)Ljava/util/Set;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_endpoints:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 56
    sget-object v0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_maxIdleTime:I

    return p0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->connectionOpened(Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 143
    iget-object p1, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object p1

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 145
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->configure(Ljava/net/Socket;)V

    .line 148
    new-instance v0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;-><init>(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Ljava/nio/channels/ByteChannel;)V

    .line 149
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->dispatch()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    return-void
.end method

.method public customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 158
    iget p2, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_maxIdleTime:I

    invoke-interface {p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 159
    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->getTransport()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->configure(Ljava/net/Socket;)V

    return-void
.end method

.method protected doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-super {p0}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->doStart()V

    .line 86
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;-><init>(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)V

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 126
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 127
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getAcceptQueueSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    return-void
.end method
