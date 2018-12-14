.class public Lorg/eclipse/jetty/servlet/Invoker;
.super Ljavax/servlet/http/HttpServlet;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private _invokerEntry:Ljava/util/Map$Entry;

.field private _nonContextServlets:Z

.field private _parameters:Ljava/util/Map;

.field private _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

.field private _verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lorg/eclipse/jetty/servlet/Invoker;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method

.method private getHolder([Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 305
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 307
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    aget-object v0, p1, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 7

    .line 83
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Invoker;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    .line 84
    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 87
    instance-of v1, v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_0
    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 90
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Invoker;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 91
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 93
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/Invoker;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nonContextServlets"

    .line 96
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lorg/eclipse/jetty/servlet/Invoker;->_nonContextServlets:Z

    :cond_2
    const-string v4, "verbose"

    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "t"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :cond_3
    iput-boolean v5, p0, Lorg/eclipse/jetty/servlet/Invoker;->_verbose:Z

    goto :goto_1

    .line 106
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    if-nez v3, :cond_5

    .line 107
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    .line 108
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    return-void
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "javax.servlet.include.servlet_path"

    .line 119
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 121
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move-object v8, v0

    const/4 v6, 0x1

    :goto_0
    const-string v0, "javax.servlet.include.path_info"

    .line 124
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 126
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v9, v0

    const/16 v0, 0x194

    if-eqz v9, :cond_11

    .line 130
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_2

    goto/16 :goto_9

    .line 137
    :cond_2
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 138
    :goto_1
    invoke-virtual {v9, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_4

    .line 139
    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {v9, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 142
    :goto_2
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v3

    .line 143
    invoke-direct {p0, v3, v1}, Lorg/eclipse/jetty/servlet/Invoker;->getHolder([Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 149
    sget-object v4, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 150
    sget-object v4, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding servlet mapping for named servlet:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/*"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_5
    new-instance v4, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 152
    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/*"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 154
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v7

    const-class v10, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v7, v4, v10}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V

    move-object v7, v1

    move-object v1, v3

    goto/16 :goto_5

    :cond_6
    const-string v3, ".class"

    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-eqz v1, :cond_10

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_8

    .line 167
    :cond_8
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/servlet/Invoker;->_invokerEntry:Ljava/util/Map$Entry;

    .line 173
    invoke-static {v8, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 176
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/Invoker;->_invokerEntry:Ljava/util/Map$Entry;

    invoke-interface {v5, v7}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 179
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/servlet/ServletHolder;

    goto/16 :goto_4

    .line 184
    :cond_9
    sget-object v5, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 185
    sget-object v5, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Making new servlet="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " with path="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/*"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v10, v2, [Ljava/lang/Object;

    invoke-interface {v5, v7, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_a
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/*"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v5

    .line 188
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    if-eqz v7, :cond_b

    .line 189
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    invoke-virtual {v5, v7}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameters(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_b
    :try_start_1
    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    iget-boolean v7, p0, Lorg/eclipse/jetty/servlet/Invoker;->_nonContextServlets:Z

    if-nez v7, :cond_c

    .line 201
    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v7

    .line 203
    iget-object v10, p0, Lorg/eclipse/jetty/servlet/Invoker;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v10, v11, :cond_c

    .line 208
    :try_start_3
    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 212
    :try_start_4
    sget-object v0, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 215
    :goto_3
    sget-object p2, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dynamic servlet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not loaded from context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    new-instance p1, Ljavax/servlet/UnavailableException;

    const-string p2, "Not in context"

    invoke-direct {p1, p2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_c
    iget-boolean v7, p0, Lorg/eclipse/jetty/servlet/Invoker;->_verbose:Z

    if-eqz v7, :cond_d

    sget-object v7, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 223
    sget-object v7, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dynamic load \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v10, v2, [Ljava/lang/Object;

    invoke-interface {v7, v4, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    move-object v4, v5

    .line 225
    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v1

    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_f

    .line 230
    instance-of v0, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/Request;

    goto :goto_6

    :cond_e
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    .line 231
    :goto_6
    new-instance v2, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;-><init>(Lorg/eclipse/jetty/servlet/Invoker;Ljavax/servlet/http/HttpServletRequest;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_7

    .line 237
    :cond_f
    sget-object p1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find holder for servlet: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    :goto_7
    return-void

    :catch_1
    move-exception p1

    .line 194
    :try_start_5
    sget-object p2, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 195
    new-instance p2, Ljavax/servlet/UnavailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 225
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    .line 163
    :cond_10
    :goto_8
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void

    .line 132
    :cond_11
    :goto_9
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void
.end method
