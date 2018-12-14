.class public Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;
.super Ljava/lang/Object;
.source "ConnectHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/ConnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientToProxyConnection"
.end annotation


# instance fields
.field private final _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _channel:Ljava/nio/channels/SocketChannel;

.field private final _context:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _endPoint:Lorg/eclipse/jetty/io/EndPoint;

.field private _firstTime:Z

.field private final _timestamp:J

.field private volatile _toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/EndPoint;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "J)V"
        }
    .end annotation

    .line 748
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    new-instance p1, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 p1, 0x1

    .line 745
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_firstTime:Z

    .line 749
    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    .line 750
    iput-object p3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_channel:Ljava/nio/channels/SocketChannel;

    .line 751
    iput-object p4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    .line 752
    iput-wide p5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_timestamp:J

    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 0

    .line 737
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 868
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->closeClient()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 872
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": unexpected exception closing the client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 877
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->closeServer()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 881
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": unexpected exception closing the server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public closeClient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    return-void
.end method

.method public closeServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->closeServer()V

    return-void
.end method

.method public getTimeStamp()J
    .locals 2

    .line 832
    iget-wide v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_timestamp:J

    return-wide v0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 766
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{}: begin reading from client"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_firstTime:Z

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 771
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_firstTime:Z

    .line 772
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_channel:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    invoke-static {v0, v5, v6}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$500(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V

    .line 773
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v5, "{}: registered channel {} with connection {}"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p0, v6, v4

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_channel:Ljava/nio/channels/SocketChannel;

    aput-object v7, v6, v2

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    aput-object v7, v6, v3

    invoke-interface {v0, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v5, v6, v7}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->read(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 782
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{}: client closed connection {}"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v5, v3, v2

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 787
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->shutdownOutput()V

    goto :goto_2

    .line 785
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->closeServer()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    .line 821
    :goto_2
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{}: end reading from client"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 795
    :cond_4
    :try_start_1
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    const-string v6, "{}: read from client {} bytes {}"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v0, v7, v3

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    invoke-static {v5}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->access$600(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v5, v6, v7}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->write(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I

    move-result v0

    .line 797
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    const-string v6, "{}: written to {} {} bytes"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v4

    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    aput-object v8, v7, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 815
    :try_start_2
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": unexpected exception"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 816
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->close()V

    .line 817
    throw v0

    :catch_1
    move-exception v0

    .line 809
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": unexpected exception"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 810
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->close()V

    .line 811
    throw v0

    :catch_2
    move-exception v0

    .line 803
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 804
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->closeServer()V

    .line 805
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    :goto_3
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v3, "{}: end reading from client"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-interface {v1, v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public isIdle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onIdleExpired(J)V
    .locals 0

    .line 894
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->shutdownOutput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 898
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 899
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->close()V

    :goto_0
    return-void
.end method

.method public onInputShutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientToProxy"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(:"

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<=>:"

    .line 760
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getRemotePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
