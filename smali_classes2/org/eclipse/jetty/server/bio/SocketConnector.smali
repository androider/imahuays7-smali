.class public Lorg/eclipse/jetty/server/bio/SocketConnector;
.super Lorg/eclipse/jetty/server/AbstractConnector;
.source "SocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected final _connections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jetty/io/EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile _localPort:I

.field protected _serverSocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/eclipse/jetty/server/AbstractConnector;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_localPort:I

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/bio/SocketConnector;)I
    .locals 0

    .line 57
    iget p0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_maxIdleTime:I

    return p0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionUpgraded(Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 57
    sget-object v0, Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionOpened(Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

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

    .line 117
    iget-object p1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->configure(Ljava/net/Socket;)V

    .line 120
    new-instance v0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;-><init>(Lorg/eclipse/jetty/server/bio/SocketConnector;Ljava/net/Socket;)V

    .line 121
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->dispatch()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    const/4 v0, -0x2

    .line 109
    iput v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_localPort:I

    return-void
.end method

.method public customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;

    .line 139
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->isLowResources()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_lowResourceMaxIdleTime:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_maxIdleTime:I

    .line 140
    :goto_0
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->setMaxIdleTime(I)V

    .line 142
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/AbstractConnector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 156
    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->doStart()V

    return-void
.end method

.method protected doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->doStop()V

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 165
    iget-object v1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/EndPoint;

    .line 171
    check-cast v1, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;

    .line 172
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 168
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/AbstractConnector;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 181
    iget-object v1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 185
    new-array v1, v1, [Ljava/util/Collection;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    return-void

    :catchall_0
    move-exception p1

    .line 184
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 148
    iget v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_localPort:I

    return v0
.end method

.method protected newConnection(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;
    .locals 2

    .line 130
    new-instance v0, Lorg/eclipse/jetty/server/BlockingHttpConnection;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jetty/server/BlockingHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    return-object v0
.end method

.method protected newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 96
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1, p2, p3}, Ljava/net/ServerSocket;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v0, p2, p3, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getPort()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getAcceptQueueSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jetty/server/bio/SocketConnector;->newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    .line 86
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_localPort:I

    .line 88
    iget v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_localPort:I

    if-gtz v0, :cond_2

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port not allocated for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method
