.class Lorg/eclipse/jetty/servlet/ServletHandler$Chain;
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
    name = "Chain"
.end annotation


# instance fields
.field final _baseRequest:Lorg/eclipse/jetty/server/Request;

.field final _chain:Ljava/lang/Object;

.field _filter:I

.field final _servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/Request;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 0

    .line 1525
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1521
    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_filter:I

    .line 1526
    iput-object p2, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    .line 1527
    iput-object p3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    .line 1528
    iput-object p4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

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

    .line 1535
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1536
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFilter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_filter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1539
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_filter:I

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1541
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_filter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_filter:I

    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1542
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1543
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1544
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getFilter()Ljavax/servlet/Filter;

    move-result-object v2

    .line 1546
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->isAsyncSupported()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 1554
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 1555
    invoke-interface {v2, p1, p2, p0}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    throw p1

    .line 1548
    :cond_3
    :goto_0
    invoke-interface {v2, p1, p2, p0}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    :goto_1
    return-void

    .line 1567
    :cond_4
    move-object v0, p1

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    .line 1568
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v2, :cond_6

    .line 1570
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1571
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call servlet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1572
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_3

    .line 1574
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1575
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_3

    .line 1578
    :cond_7
    instance-of v1, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v1, :cond_8

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    goto :goto_2

    :cond_8
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p1

    .line 1579
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {v1, v2, p1, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1588
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1590
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 1591
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    .line 1592
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1594
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
