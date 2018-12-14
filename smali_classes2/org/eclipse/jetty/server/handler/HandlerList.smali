.class public Lorg/eclipse/jetty/server/handler/HandlerList;
.super Lorg/eclipse/jetty/server/handler/HandlerCollection;
.source "HandlerList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerList;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerList;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 50
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 52
    aget-object v2, v0, v1

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 53
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
