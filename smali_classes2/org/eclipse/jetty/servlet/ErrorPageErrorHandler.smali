.class public Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
.super Lorg/eclipse/jetty/server/handler/ErrorHandler;
.source "ErrorPageErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    }
.end annotation


# static fields
.field public static final ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.server.error_page"

.field public static final GLOBAL_ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.server.error_page.global"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _errorPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;",
            ">;"
        }
    .end annotation
.end field

.field private final _errorPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _servletContext:Ljavax/servlet/ServletContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addErrorPage(IILjava/lang/String;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    new-instance v1, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;-><init>(Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addErrorPage(ILjava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addErrorPage(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addErrorPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->doStart()V

    .line 237
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Ljavax/servlet/ServletContext;

    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->doStop()V

    return-void
.end method

.method public getErrorPages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    const-string v1, "javax.servlet.error.exception_type"

    .line 79
    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 81
    const-class v2, Ljavax/servlet/ServletException;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v2, "javax.servlet.error.exception"

    .line 86
    invoke-interface {p3, v2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 87
    :goto_0
    instance-of v3, v2, Ljavax/servlet/ServletException;

    if-eqz v3, :cond_1

    .line 88
    check-cast v2, Ljavax/servlet/ServletException;

    invoke-virtual {v2}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    if-nez v0, :cond_5

    const-string v2, "javax.servlet.error.status_code"

    .line 103
    invoke-interface {p3, v2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_5

    .line 109
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 112
    :goto_2
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 114
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 117
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    const-string v2, "org.eclipse.jetty.server.error_page.global"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_6
    if-eqz v0, :cond_9

    const-string v2, "org.eclipse.jetty.server.error_page"

    .line 133
    invoke-interface {p3, v2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    const-string v2, "org.eclipse.jetty.server.error_page"

    .line 136
    invoke-interface {p3, v2, v0}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v2, v0}, Ljavax/servlet/ServletContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/server/Dispatcher;

    if-eqz v2, :cond_8

    .line 143
    :try_start_0
    invoke-virtual {v2, p3, p4}, Lorg/eclipse/jetty/server/Dispatcher;->error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    .line 148
    :cond_8
    sget-object v2, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No error page "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 153
    :goto_4
    sget-object p2, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string p3, "EXCEPTION "

    invoke-interface {p2, p3, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 160
    :cond_9
    :goto_5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public setErrorPages(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
