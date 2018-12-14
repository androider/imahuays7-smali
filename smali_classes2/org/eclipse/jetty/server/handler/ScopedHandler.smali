.class public abstract Lorg/eclipse/jetty/server/handler/ScopedHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "ScopedHandler.java"


# static fields
.field private static final __outerScope:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/eclipse/jetty/server/handler/ScopedHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

.field protected _outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->__outerScope:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/server/handler/ScopedHandler;->__outerScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    .line 112
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-nez v1, :cond_0

    .line 113
    sget-object v1, Lorg/eclipse/jetty/server/handler/ScopedHandler;->__outerScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 115
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 117
    const-class v1, Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-nez v1, :cond_1

    .line 123
    sget-object v1, Lorg/eclipse/jetty/server/handler/ScopedHandler;->__outerScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 122
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-nez v2, :cond_2

    .line 123
    sget-object v2, Lorg/eclipse/jetty/server/handler/ScopedHandler;->__outerScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public final handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    :goto_0
    return-void
.end method

.method protected never()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final nextScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ScopedHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    :goto_0
    return-void
.end method
