.class public Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;
.super Ljavax/servlet/GenericServlet;
.source "JspPropertyGroupServlet.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "__org.eclipse.jetty.servlet.JspPropertyGroupServlet__"

.field private static final serialVersionUID:J = 0x33185253adc90871L


# instance fields
.field private final _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private _dftServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

.field private _jspServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

.field private final _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

.field private _starJspMapped:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Lorg/eclipse/jetty/servlet/ServletHandler;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljavax/servlet/GenericServlet;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 59
    iput-object p2, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const-string v0, "jsp"

    .line 66
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    const-string v2, "*.jsp"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_starJspMapped:Z

    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v0

    .line 73
    array-length v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 75
    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 78
    array-length v7, v6

    move-object v8, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v9, v6, v4

    const-string v10, "*.jsp"

    .line 80
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "__org.eclipse.jetty.servlet.JspPropertyGroupServlet__"

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v8, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v8

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_jspServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v0, "default"

    .line 91
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 93
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_dftServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    return-void
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    instance-of v0, p1, Ljavax/servlet/http/HttpServletRequest;

    if-eqz v0, :cond_5

    .line 102
    move-object v0, p1

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "javax.servlet.include.request_uri"

    .line 108
    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "javax.servlet.include.servlet_path"

    .line 110
    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "javax.servlet.include.path_info"

    .line 111
    invoke-interface {v0, v2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 114
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    .line 124
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_dftServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1

    .line 130
    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_starJspMapped:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jsp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_jspServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1

    .line 137
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_dftServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_jspServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    :goto_1
    return-void

    .line 104
    :cond_5
    new-instance p1, Ljavax/servlet/ServletException;

    const-string p2, "Request not HttpServletRequest"

    invoke-direct {p1, p2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
