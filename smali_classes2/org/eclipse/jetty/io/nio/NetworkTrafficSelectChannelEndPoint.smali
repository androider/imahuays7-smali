.class public Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;
.super Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
.source "NetworkTrafficSelectChannelEndPoint.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


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
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;",
            "Ljava/nio/channels/SelectionKey;",
            "I",
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/io/NetworkTrafficListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V

    .line 41
    iput-object p5, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 48
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyIncoming(Lorg/eclipse/jetty/io/Buffer;I)V

    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    .line 56
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 57
    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyOutgoing(Lorg/eclipse/jetty/io/Buffer;II)V

    return v1
.end method

.method protected gatheringFlush(Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    .line 65
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 66
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->gatheringFlush(Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;)I

    move-result p2

    if-le p2, v1, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, p2

    .line 68
    :goto_0
    invoke-virtual {p0, p1, v0, p4}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyOutgoing(Lorg/eclipse/jetty/io/Buffer;II)V

    if-le p2, v1, :cond_1

    sub-int p1, p2, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 69
    :goto_1
    invoke-virtual {p0, p3, v2, p1}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyOutgoing(Lorg/eclipse/jetty/io/Buffer;II)V

    return p2
.end method

.method public notifyClosed()V
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/NetworkTrafficListener;

    .line 139
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/NetworkTrafficListener;->closed(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 143
    sget-object v2, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyIncoming(Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    .line 95
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/NetworkTrafficListener;

    .line 99
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->asReadOnlyBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/io/NetworkTrafficListener;->incoming(Ljava/net/Socket;Lorg/eclipse/jetty/io/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    sget-object v1, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOpened()V
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/NetworkTrafficListener;

    .line 81
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/NetworkTrafficListener;->opened(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 85
    sget-object v2, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOutgoing(Lorg/eclipse/jetty/io/Buffer;II)V
    .locals 4

    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p3, :cond_0

    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/NetworkTrafficListener;

    .line 118
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->asReadOnlyBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 119
    invoke-interface {v2, p2}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    add-int v3, p2, p3

    .line 120
    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 121
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-interface {v1, v3, v2}, Lorg/eclipse/jetty/io/NetworkTrafficListener;->outgoing(Ljava/net/Socket;Lorg/eclipse/jetty/io/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 125
    sget-object v2, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
