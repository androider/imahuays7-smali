.class public abstract Lorg/eclipse/jetty/server/handler/AbstractHandler;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "AbstractHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Handler;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _server:Lorg/eclipse/jetty/server/Server;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/eclipse/jetty/server/handler/AbstractHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!STOPPED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->destroy()V

    .line 95
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->_server:Lorg/eclipse/jetty/server/Server;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/util/component/Container;->removeBean(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "starting {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStart()V

    return-void
.end method

.method protected doStop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    sget-object v0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "stopping {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStop()V

    return-void
.end method

.method public dumpThis(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string v0, " - "

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public getServer()Lorg/eclipse/jetty/server/Server;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->_server:Lorg/eclipse/jetty/server/Server;

    return-object v0
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->_server:Lorg/eclipse/jetty/server/Server;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 77
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/util/component/Container;->removeBean(Ljava/lang/Object;)V

    .line 78
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->_server:Lorg/eclipse/jetty/server/Server;

    .line 79
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->_server:Lorg/eclipse/jetty/server/Server;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->_server:Lorg/eclipse/jetty/server/Server;

    if-eq p1, v0, :cond_1

    .line 80
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/AbstractHandler;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/util/component/Container;->addBean(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
