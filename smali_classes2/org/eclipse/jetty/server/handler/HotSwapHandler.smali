.class public Lorg/eclipse/jetty/server/handler/HotSwapHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;
.source "HotSwapHandler.java"


# instance fields
.field private volatile _handler:Lorg/eclipse/jetty/server/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 166
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!STOPPED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 172
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->destroy()V

    .line 174
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->destroy()V

    return-void
.end method

.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStart()V

    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStop()V

    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->expandHandler(Lorg/eclipse/jetty/server/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getHandler()Lorg/eclipse/jetty/server/Handler;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method

.method public getHandlers()[Lorg/eclipse/jetty/server/Handler;
    .locals 3

    const/4 v0, 0x1

    .line 63
    new-array v0, v0, [Lorg/eclipse/jetty/server/Handler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    :cond_0
    return-void
.end method

.method public setHandler(Lorg/eclipse/jetty/server/Handler;)V
    .locals 3

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter handler is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    .line 79
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    .line 80
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    .line 81
    invoke-interface {p1, v1}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 82
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->addBean(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    const-string v2, "handler"

    invoke-virtual {v1, p0, v0, p1, v2}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->removeBean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RUNNING"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 145
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 147
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    :cond_2
    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_3

    .line 150
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    const-string v2, "handler"

    invoke-virtual {p1, p0, v0, v1, v2}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
