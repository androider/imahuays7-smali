.class public Lorg/eclipse/jetty/server/handler/ResourceHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "ResourceHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _aliases:Z

.field _baseResource:Lorg/eclipse/jetty/util/resource/Resource;

.field _cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field _context:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field _defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;

.field _directory:Z

.field _etags:Z

.field _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field _stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

.field _welcomeFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    const/4 v0, 0x1

    .line 67
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "index.html"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 68
    new-instance v0, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-void
.end method


# virtual methods
.method protected doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_directory:Z

    if-eqz v0, :cond_1

    .line 502
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, v0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->getListHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p3, "text/html; charset=UTF-8"

    .line 503
    invoke-interface {p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 504
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x193

    .line 507
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    :goto_1
    return-void
.end method

.method protected doResponseHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 521
    invoke-interface {p1, p3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 523
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide p2

    .line 525
    instance-of v0, p1, Lorg/eclipse/jetty/server/Response;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 527
    check-cast p1, Lorg/eclipse/jetty/server/Response;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    cmp-long v0, p2, v1

    if-lez v0, :cond_1

    .line 530
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, v0, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 532
    :cond_1
    iget-object p2, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz p2, :cond_4

    .line 533
    sget-object p2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    :cond_2
    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    const-string v0, "Content-Length"

    .line 538
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_3
    iget-object p2, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz p2, :cond_4

    const-string p2, "Cache-Control"

    .line 541
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    .line 161
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/eclipse/jetty/util/resource/FileResource;->getCheckAliases()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Alias checking disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    return-void
.end method

.method public getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "/"

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-nez v0, :cond_1

    return-object v1

    .line 299
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 306
    :cond_2
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 311
    sget-object v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return-object v1

    .line 292
    :cond_3
    :goto_0
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getResource(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const-string v0, "javax.servlet.include.request_uri"

    .line 322
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "javax.servlet.include.servlet_path"

    .line 325
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "javax.servlet.include.path_info"

    .line 326
    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 330
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 336
    :cond_1
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    .line 340
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p1

    return-object p1
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStylesheet()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4

    .line 223
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_1

    .line 233
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/jetty-dir.css"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 241
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method protected getWelcome(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 360
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 362
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 376
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-string v4, "GET"

    .line 381
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    const-string v4, "HEAD"

    .line 383
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 386
    invoke-super/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 392
    :goto_0
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getResource(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 394
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    const-string v7, "/jetty-dir.css"

    move-object/from16 v8, p1

    .line 396
    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 398
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getStylesheet()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v7

    if-nez v7, :cond_4

    return-void

    :cond_4
    const-string v8, "text/css"

    .line 401
    invoke-interface {v3, v8}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 411
    :cond_5
    iget-boolean v8, v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    if-nez v8, :cond_6

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 413
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " aliased to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 418
    :cond_6
    invoke-virtual {v1, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 420
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 422
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 424
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    return-void

    .line 428
    :cond_7
    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getWelcome(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 429
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v9, v5

    goto :goto_1

    .line 433
    :cond_8
    invoke-virtual {v0, v2, v3, v7}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 434
    invoke-virtual {v1, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    return-void

    :cond_9
    move-object v9, v7

    .line 440
    :goto_1
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v5

    .line 442
    iget-boolean v7, v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_etags:Z

    const/16 v8, 0x130

    const/4 v10, 0x0

    if-eqz v7, :cond_a

    const-string v7, "If-None-Match"

    .line 445
    invoke-interface {v2, v7}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 446
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->getWeakETag()Ljava/lang/String;

    move-result-object v11

    if-eqz v7, :cond_b

    if-eqz v9, :cond_b

    .line 447
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 449
    invoke-interface {v3, v8}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2, v11}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    return-void

    :cond_a
    move-object v11, v10

    :cond_b
    const-wide/16 v12, 0x0

    cmp-long v7, v5, v12

    if-lez v7, :cond_c

    const-string v7, "If-Modified-Since"

    .line 458
    invoke-interface {v2, v7}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v7, v14, v12

    if-lez v7, :cond_c

    const-wide/16 v12, 0x3e8

    .line 459
    div-long v16, v5, v12

    div-long/2addr v14, v12

    cmp-long v7, v16, v14

    if-gtz v7, :cond_c

    .line 461
    invoke-interface {v3, v8}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    return-void

    .line 466
    :cond_c
    iget-object v7, v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    if-nez v7, :cond_d

    .line 468
    iget-object v7, v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    :cond_d
    if-eqz v7, :cond_e

    .line 471
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_e
    invoke-virtual {v0, v3, v9, v10}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->doResponseHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V

    const-string v2, "Last-Modified"

    .line 472
    invoke-interface {v3, v2, v5, v6}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 473
    iget-boolean v2, v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_etags:Z

    if-eqz v2, :cond_f

    .line 474
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2, v11}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    :cond_f
    if-eqz v4, :cond_10

    return-void

    .line 480
    :cond_10
    :try_start_0
    invoke-interface/range {p4 .. p4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v10, v1

    goto :goto_3

    .line 481
    :catch_0
    new-instance v1, Lorg/eclipse/jetty/io/WriterOutputStream;

    invoke-interface/range {p4 .. p4}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    goto :goto_2

    .line 484
    :goto_3
    instance-of v1, v10, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-eqz v1, :cond_11

    .line 487
    check-cast v10, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_4

    :cond_11
    const-wide/16 v11, 0x0

    .line 492
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v13

    invoke-virtual/range {v9 .. v14}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    :goto_4
    return-void

    .line 406
    :cond_12
    invoke-super/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public isAliases()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    return v0
.end method

.method public isDirectoriesListed()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_directory:Z

    return v0
.end method

.method public isEtags()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_etags:Z

    return v0
.end method

.method public setAliases(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    return-void
.end method

.method public setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-void
.end method

.method public setDirectoriesListed(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_directory:Z

    return-void
.end method

.method public setEtags(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_etags:Z

    return-void
.end method

.method public setMimeTypes(Lorg/eclipse/jetty/http/MimeTypes;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-void
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 4

    .line 207
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 211
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStylesheet(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 253
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 254
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find custom stylesheet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 257
    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 262
    sget-object v2, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    sget-object v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    return-void
.end method
