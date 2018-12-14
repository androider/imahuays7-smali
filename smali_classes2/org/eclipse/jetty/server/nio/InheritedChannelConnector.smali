.class public Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;
.super Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
.source "InheritedChannelConnector.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    return-void
.end method


# virtual methods
.method public open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    monitor-enter p0

    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/System;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v1

    .line 57
    instance-of v2, v1, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_0

    .line 58
    check-cast v1, Ljava/nio/channels/ServerSocketChannel;

    iput-object v1, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    goto :goto_0

    .line 60
    :cond_0
    sget-object v2, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to use System.inheritedChannel() ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]. Trying a new ServerSocketChannel at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->getPort()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 67
    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Need at least Java 5 to use socket inherited from xinetd/inetd."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-nez v0, :cond_2

    .line 71
    invoke-super {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->open()V

    .line 72
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
