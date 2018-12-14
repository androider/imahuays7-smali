.class public Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;
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
    name = "ProxyToServerConnection"
.end annotation


# instance fields
.field private final _buffer:Lorg/eclipse/jetty/io/Buffer;

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

.field private volatile _data:Lorg/eclipse/jetty/io/Buffer;

.field private volatile _endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private final _ready:Ljava/util/concurrent/CountDownLatch;

.field private volatile _timestamp:J

.field private volatile _toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/eclipse/jetty/io/Buffer;",
            ")V"
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_ready:Ljava/util/concurrent/CountDownLatch;

    .line 525
    new-instance p1, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 534
    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    .line 535
    iput-object p3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_data:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 0

    .line 522
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-object p0
.end method

.method private writeData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    monitor-enter p0

    .line 614
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_data:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 618
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_data:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->write(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I

    move-result v1

    .line 619
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    const-string v3, "{}: written to server {} bytes"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :try_start_2
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_data:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_data:Lorg/eclipse/jetty/io/Buffer;

    throw v1

    .line 629
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 700
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->closeClient()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 704
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

    .line 709
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->closeServer()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 713
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

    .line 688
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->closeClient()V

    return-void
.end method

.method public closeServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->close()V

    return-void
.end method

.method public getTimeStamp()J
    .locals 2

    .line 639
    iget-wide v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_timestamp:J

    return-wide v0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{}: begin reading from server"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->writeData()V

    .line 556
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v1, v3, v5}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->read(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_2

    .line 560
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{}: server closed connection {}"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    aput-object v5, v3, v2

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->shutdownOutput()V

    goto :goto_2

    .line 563
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->closeClient()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    .line 598
    :goto_2
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{}: end reading from server"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 573
    :cond_3
    :try_start_1
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v5, "{}: read from server {} bytes {}"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p0, v7, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    aput-object v0, v7, v3

    invoke-interface {v1, v5, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->access$400(Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v1, v5, v7}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->write(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I

    move-result v0

    .line 575
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v5, "{}: written to {} {} bytes"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v4

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-interface {v1, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
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

    .line 592
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

    .line 593
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->close()V

    .line 594
    throw v0

    :catch_1
    move-exception v0

    .line 586
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

    .line 587
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->close()V

    .line 588
    throw v0

    :catch_2
    move-exception v0

    .line 581
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 582
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    :goto_3
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v3, "{}: end reading from server"

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

    .line 727
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->shutdownOutput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 731
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 732
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->close()V

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

.method public ready()V
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    return-void
.end method

.method public setEndPoint(Lorg/eclipse/jetty/io/AsyncEndPoint;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 644
    iput-wide p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_timestamp:J

    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->writeData()V

    .line 720
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->shutdownOutput()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyToServer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(:"

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<=>:"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemotePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitReady(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_ready:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 679
    new-instance p2, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;Ljava/lang/InterruptedException;)V

    throw p2
.end method
