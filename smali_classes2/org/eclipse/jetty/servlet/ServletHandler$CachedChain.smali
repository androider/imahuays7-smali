.class Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;
.super Ljava/lang/Object;
.source "ServletHandler.java"

# interfaces
.implements Ljavax/servlet/FilterChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedChain"
.end annotation


# instance fields
.field _filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

.field _next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

.field _servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 2

    .line 1441
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    invoke-static {p2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1444
    invoke-static {p2, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1445
    invoke-static {p2, v0}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    .line 1446
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    goto :goto_0

    .line 1449
    :cond_0
    iput-object p3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    :goto_0
    return-void
.end method


# virtual methods
.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 1456
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

    .line 1459
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1461
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1462
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1463
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getFilter()Ljavax/servlet/Filter;

    move-result-object v1

    .line 1464
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1465
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-interface {v1, p1, p2, v0}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    goto :goto_1

    .line 1468
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->isAsyncSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 1473
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 1474
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-interface {v1, p1, p2, v2}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    throw p1

    .line 1482
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-interface {v1, p1, p2, v0}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    :goto_1
    return-void

    .line 1489
    :cond_4
    move-object v1, p1

    check-cast v1, Ljavax/servlet/http/HttpServletRequest;

    .line 1490
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v3, :cond_6

    .line 1492
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1493
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call servlet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1494
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v1, v0, p1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_2

    .line 1496
    :cond_6
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object p1

    if-nez p1, :cond_7

    .line 1497
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_2

    .line 1499
    :cond_7
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-interface {v1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p1, v2, v0, v1, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1506
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_0

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1508
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_1

    .line 1509
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "null"

    return-object v0
.end method
