.class final Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;
.super Lorg/eclipse/jetty/io/nio/SelectorManager;
.source "SelectChannelConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectorSelectorManager"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;Lorg/eclipse/jetty/server/nio/SelectChannelConnector$1;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;-><init>(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;)V

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    .line 300
    :cond_0
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method protected endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    return-void
.end method

.method protected endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->access$100(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method protected endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/ConnectedEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->access$200(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method public newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 0

    .line 325
    iget-object p3, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object p1

    return-object p1
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object p1

    return-object p1
.end method
