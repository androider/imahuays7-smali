.class public Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;
.super Ljava/lang/Object;
.source "SslConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/AsyncEndPoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/SslConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SslEndPoint"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/io/nio/SslConnection;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/nio/SslConnection;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncDispatch()V
    .locals 1

    .line 748
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    return-void
.end method

.method public blockReadable(J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    add-long v2, v0, p1

    goto :goto_0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 712
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 714
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1000(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object p1

    sub-long v4, v2, v0

    invoke-interface {p1, v4, v5}, Lorg/eclipse/jetty/io/EndPoint;->blockReadable(J)Z

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    :goto_1
    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public blockWritable(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result p1

    return p1
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1

    .line 778
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{} ssl endp.close"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v3}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$800(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    return-void
.end method

.method public dispatch()V
    .locals 1

    .line 743
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->dispatch()V

    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 678
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    .line 680
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 682
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return p1
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 690
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    .line 691
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 696
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 698
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 699
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    return p1

    :cond_1
    if-eqz p3, :cond_2

    .line 700
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 701
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    return-void
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .line 838
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v0

    return-object v0
.end method

.method public getEndpoint()Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .line 793
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .line 798
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 803
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .line 828
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .line 808
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .line 813
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 818
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getSslEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 625
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .line 733
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    return-object v0
.end method

.method public hasProgressed()Z
    .locals 2

    .line 788
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1400(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckForIdle()Z
    .locals 1

    .line 768
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isCheckForIdle()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 2

    .line 661
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    monitor-enter v0

    .line 663
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 666
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpen()Z
    .locals 1

    .line 728
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1200(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 2

    .line 646
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    monitor-enter v0

    .line 648
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$400(Lorg/eclipse/jetty/io/nio/SslConnection;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 649
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isWritable()Z
    .locals 1

    .line 783
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isWritable()Z

    move-result v0

    return v0
.end method

.method public onIdleExpired(J)V
    .locals 1

    .line 758
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->onIdleExpired(J)V

    return-void
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    return-void
.end method

.method public scheduleWrite()V
    .locals 1

    .line 753
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleWrite()V

    return-void
.end method

.method public setCheckForIdle(Z)V
    .locals 1

    .line 763
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 1

    .line 843
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    check-cast p1, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1502(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/nio/AsyncConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setMaxIdleTime(I)V

    return-void
.end method

.method public shutdownInput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{} ssl endp.ishut!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v3}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public shutdownOutput()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v2, "{} ssl endp.oshut {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v5}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 639
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1, v4}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$402(Lorg/eclipse/jetty/io/nio/SslConnection;Z)Z

    .line 640
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush()V

    return-void

    :catchall_0
    move-exception v1

    .line 640
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 851
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v1

    .line 853
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v2}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 854
    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    :goto_0
    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    .line 855
    :cond_1
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    .line 856
    :cond_2
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    :goto_2
    const-string v2, "SSL %s i/o/u=%d/%d/%d ishut=%b oshut=%b {%s}"

    const/4 v4, 0x7

    .line 857
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v6}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1700(Lorg/eclipse/jetty/io/nio/SslConnection;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$400(Lorg/eclipse/jetty/io/nio/SslConnection;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
