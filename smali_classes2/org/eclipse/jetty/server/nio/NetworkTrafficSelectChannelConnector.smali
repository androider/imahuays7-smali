.class public Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;
.super Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
.source "NetworkTrafficSelectChannelConnector.java"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/io/NetworkTrafficListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNetworkTrafficListener(Lorg/eclipse/jetty/io/NetworkTrafficListener;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 71
    check-cast p1, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;

    invoke-virtual {p1}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyClosed()V

    return-void
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v6, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;

    iget v4, p0, Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;->_maxIdleTime:I

    iget-object v5, p0, Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;->listeners:Ljava/util/List;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;ILjava/util/List;)V

    .line 62
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object p2

    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, v6, p3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 63
    invoke-virtual {v6}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyOpened()V

    return-object v6
.end method

.method public removeNetworkTrafficListener(Lorg/eclipse/jetty/io/NetworkTrafficListener;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
