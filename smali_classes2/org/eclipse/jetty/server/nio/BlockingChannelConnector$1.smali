.class Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;
.super Ljava/lang/Object;
.source "BlockingChannelConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x190

    .line 95
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    iget-object v2, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-static {v2}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$000(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;

    .line 99
    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->checkIdleTimestamp(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 108
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 104
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
