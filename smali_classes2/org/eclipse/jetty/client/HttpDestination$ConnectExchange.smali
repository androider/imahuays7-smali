.class Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;
.super Lorg/eclipse/jetty/client/ContentExchange;
.source "HttpDestination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/HttpDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectExchange"
.end annotation


# instance fields
.field private final proxyEndPoint:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

.field final synthetic this$0:Lorg/eclipse/jetty/client/HttpDestination;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/Address;Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {p0}, Lorg/eclipse/jetty/client/ContentExchange;-><init>()V

    .line 683
    iput-object p3, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->proxyEndPoint:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    const-string p1, "CONNECT"

    .line 684
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->setMethod(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->toString()Ljava/lang/String;

    move-result-object p1

    .line 686
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->setRequestURI(Ljava/lang/String;)V

    const-string p2, "Host"

    .line 687
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Proxy-Connection"

    const-string p2, "keep-alive"

    .line 688
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "User-Agent"

    const-string p2, "Jetty-Client"

    .line 689
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 713
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onException(Ljava/lang/Throwable;)V
    .locals 3

    .line 720
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    monitor-enter v0

    .line 722
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpDestination;->access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpDestination;->access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/client/HttpExchange;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 724
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    .line 725
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 724
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onExpire()V
    .locals 3

    .line 733
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpDestination;->access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpDestination;->access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/client/HttpExchange;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 737
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .line 738
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 737
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onResponseComplete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->getResponseStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->proxyEndPoint:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->upgrade()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f8

    if-ne v0, v1, :cond_1

    .line 702
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->onExpire()V

    goto :goto_0

    .line 706
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->proxyEndPoint:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->proxyEndPoint:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->getRemotePort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " didn\'t return http return code 200, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->onException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
