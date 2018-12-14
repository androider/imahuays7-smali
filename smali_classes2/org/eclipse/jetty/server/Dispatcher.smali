.class public Lorg/eclipse/jetty/server/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Ljavax/servlet/RequestDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;,
        Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;
    }
.end annotation


# static fields
.field public static final __FORWARD_PREFIX:Ljava/lang/String; = "javax.servlet.forward."

.field public static final __INCLUDE_PREFIX:Ljava/lang/String; = "javax.servlet.include."

.field public static final __JSP_FILE:Ljava/lang/String; = "org.apache.catalina.jsp_file"


# instance fields
.field private final _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private final _dQuery:Ljava/lang/String;

.field private final _named:Ljava/lang/String;

.field private final _path:Ljava/lang/String;

.field private final _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 91
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 75
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    return-object p0
.end method

.method private commitResponse(Ljavax/servlet/ServletResponse;Lorg/eclipse/jetty/server/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Response;->isWriting()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 304
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/servlet/ServletOutputStream;->close()V

    goto :goto_0

    .line 315
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 319
    :catch_1
    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    :goto_0
    return-void
.end method


# virtual methods
.method public error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    sget-object v0, Ljavax/servlet/DispatcherType;->ERROR:Ljavax/servlet/DispatcherType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/server/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/DispatcherType;)V

    return-void
.end method

.method public forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    sget-object v0, Ljavax/servlet/DispatcherType;->FORWARD:Ljavax/servlet/DispatcherType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/server/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/DispatcherType;)V

    return-void
.end method

.method protected forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/DispatcherType;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    instance-of v0, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    .line 203
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    .line 204
    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    .line 205
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->fwdReset()V

    .line 208
    instance-of v1, p1, Ljavax/servlet/http/HttpServletRequest;

    if-nez v1, :cond_1

    .line 209
    new-instance v1, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    invoke-direct {v1, p1}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;-><init>(Ljavax/servlet/ServletRequest;)V

    move-object p1, v1

    .line 210
    :cond_1
    instance-of v1, p2, Ljavax/servlet/http/HttpServletResponse;

    if-nez v1, :cond_2

    .line 211
    new-instance v1, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    invoke-direct {v1, p2}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;-><init>(Ljavax/servlet/ServletResponse;)V

    move-object p2, v1

    .line 213
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v1

    .line 214
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v6

    .line 219
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v7

    .line 220
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v8

    .line 221
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v9

    const/4 v10, 0x0

    .line 225
    :try_start_0
    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 226
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    .line 228
    iget-object p3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 229
    iget-object p3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v10, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p3, v10, v0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_2

    .line 234
    :cond_3
    iget-object p3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    if-eqz p3, :cond_5

    if-nez v9, :cond_4

    .line 240
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 241
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v10

    move-object v9, v10

    .line 244
    :cond_4
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/server/Request;->mergeQueryString(Ljava/lang/String;)V

    .line 247
    :cond_5
    new-instance p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;

    invoke-direct {p3, p0, v7}, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;-><init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V

    const-string v10, "javax.servlet.forward.request_uri"

    .line 253
    invoke-interface {v7, v10}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    const-string v10, "javax.servlet.forward.path_info"

    .line 255
    invoke-interface {v7, v10}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    const-string v10, "javax.servlet.forward.query_string"

    .line 256
    invoke-interface {v7, v10}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    const-string v10, "javax.servlet.forward.request_uri"

    .line 257
    invoke-interface {v7, v10}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    const-string v10, "javax.servlet.forward.context_path"

    .line 258
    invoke-interface {v7, v10}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    const-string v10, "javax.servlet.forward.servlet_path"

    .line 259
    invoke-interface {v7, v10}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;

    goto :goto_1

    .line 263
    :cond_6
    iput-object v5, p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 264
    iput-object v6, p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    .line 265
    iput-object v2, p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    .line 266
    iput-object v3, p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    .line 267
    iput-object v4, p3, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;

    .line 270
    :goto_1
    iget-object v10, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 271
    iget-object v10, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 272
    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 273
    iget-object v10, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 276
    iget-object p3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v10, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    move-object v11, p2

    check-cast v11, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p3, v10, v0, p1, v11}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 278
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result p1

    if-nez p1, :cond_7

    .line 279
    invoke-direct {p0, p2, v0}, Lorg/eclipse/jetty/server/Dispatcher;->commitResponse(Ljavax/servlet/ServletResponse;Lorg/eclipse/jetty/server/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_7
    :goto_2
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 285
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 290
    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 291
    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    return-void

    :catchall_0
    move-exception p1

    .line 284
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 285
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 290
    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 291
    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    throw p1
.end method

.method public include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    instance-of v0, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    .line 124
    :goto_0
    instance-of v1, p1, Ljavax/servlet/http/HttpServletRequest;

    if-nez v1, :cond_1

    .line 125
    new-instance v1, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    invoke-direct {v1, p1}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;-><init>(Ljavax/servlet/ServletRequest;)V

    move-object p1, v1

    .line 126
    :cond_1
    instance-of v1, p2, Ljavax/servlet/http/HttpServletResponse;

    if-nez v1, :cond_2

    .line 127
    new-instance v1, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    invoke-direct {v1, p2}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;-><init>(Ljavax/servlet/ServletResponse;)V

    move-object p2, v1

    .line 132
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v1

    .line 133
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v2

    .line 134
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v3

    .line 137
    :try_start_0
    sget-object v4, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    .line 138
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->include()V

    .line 139
    iget-object v4, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 140
    iget-object v4, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v5, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {v4, v5, v0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_2

    .line 143
    :cond_3
    iget-object v4, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    if-eqz v4, :cond_7

    if-nez v3, :cond_4

    .line 150
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 151
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v5

    move-object v3, v5

    .line 154
    :cond_4
    new-instance v5, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v5}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 155
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    if-eqz v3, :cond_6

    .line 157
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 160
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 161
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 163
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 165
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x0

    .line 166
    :goto_1
    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 167
    invoke-static {v7, v9}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 170
    :cond_6
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 173
    :cond_7
    new-instance v5, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;

    invoke-direct {v5, p0, v2}, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;-><init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V

    .line 175
    iget-object v6, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    iput-object v6, v5, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    .line 176
    iget-object v6, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    const/4 v6, 0x0

    .line 177
    iput-object v6, v5, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    .line 178
    iget-object v6, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    iput-object v6, v5, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    .line 179
    iput-object v4, v5, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 183
    iget-object v4, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v5, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {v4, v5, v0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_2
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 189
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->included()V

    .line 190
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 191
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    return-void

    :catchall_0
    move-exception p1

    .line 188
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 189
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->included()V

    .line 190
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 191
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    throw p1
.end method
