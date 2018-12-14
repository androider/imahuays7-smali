.class Lorg/eclipse/jetty/client/SelectConnector$Manager;
.super Lorg/eclipse/jetty/io/nio/SelectorManager;
.source "SelectConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/SelectConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Manager"
.end annotation


# instance fields
.field LOG:Lorg/eclipse/jetty/util/log/Logger;

.field final synthetic this$0:Lorg/eclipse/jetty/client/SelectConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/client/SelectConnector;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;-><init>()V

    .line 110
    invoke-static {}, Lorg/eclipse/jetty/client/SelectConnector;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method private declared-synchronized newSslEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/client/SelectConnector;->access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result p1

    .line 183
    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 190
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 176
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/client/SelectConnector;->access$200(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    .line 206
    :cond_0
    instance-of v0, p3, Lorg/eclipse/jetty/client/HttpDestination;

    if-eqz v0, :cond_1

    .line 207
    check-cast p3, Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {p3, p2}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/client/SelectConnector;->access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method protected endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    return-void
.end method

.method protected endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    return-void
.end method

.method protected endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0

    return-void
.end method

.method public newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 1

    .line 136
    new-instance p1, Lorg/eclipse/jetty/client/AsyncHttpConnection;

    iget-object p3, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {p3}, Lorg/eclipse/jetty/client/SelectConnector;->access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jetty/client/HttpClient;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object p3

    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/client/SelectConnector;->access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    invoke-direct {p1, p3, v0, p2}, Lorg/eclipse/jetty/client/AsyncHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    return-object p1
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/client/SelectConnector;->access$200(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Channels with connection pending: {}"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v5}, Lorg/eclipse/jetty/client/SelectConnector;->access$200(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_1
    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 152
    new-instance v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v4}, Lorg/eclipse/jetty/client/SelectConnector;->access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v3, p1, p2, p3, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V

    .line 155
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    iget-object v4, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "secure to {}, proxied={}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    new-instance v1, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/SelectConnector$Manager;->newSslEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;-><init>(Lorg/eclipse/jetty/io/AsyncEndPoint;Ljavax/net/ssl/SSLEngine;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 161
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object p2

    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, v1, p3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object p1

    .line 162
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 164
    check-cast p1, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 165
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setDestination(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 167
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result p2

    if-nez p2, :cond_3

    .line 168
    check-cast v1, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->upgrade()V

    .line 170
    :cond_3
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->onNewConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    return-object v3
.end method
