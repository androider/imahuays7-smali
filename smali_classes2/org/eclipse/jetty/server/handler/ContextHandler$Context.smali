.class public Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
.super Ljava/lang/Object;
.source "ContextHandler.java"

# interfaces
.implements Ljavax/servlet/ServletContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/ContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# static fields
.field private static final __unimplmented:Ljava/lang/String; = "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"


# instance fields
.field protected _enabled:Z

.field protected _majorVersion:I

.field protected _minorVersion:I

.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V
    .locals 0

    .line 1717
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 1711
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_majorVersion:I

    const/4 p1, 0x0

    .line 1712
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_minorVersion:I

    const/4 p1, 0x1

    .line 1713
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/Class;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Filter;",
            ">;)",
            "Ljavax/servlet/FilterRegistration$Dynamic;"
        }
    .end annotation

    .line 2211
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string p2, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 1

    .line 2225
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string p2, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addFilter(Ljava/lang/String;Ljavax/servlet/Filter;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 1

    .line 2218
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string p2, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addListener(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .line 2348
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 2349
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2353
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->createListener(Ljava/lang/Class;)Ljava/util/EventListener;

    move-result-object p1

    .line 2354
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 2355
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->restrictEventListener(Ljava/util/EventListener;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 1

    .line 2322
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 2323
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2327
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 2328
    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(TT;)V"
        }
    .end annotation

    .line 2339
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 2340
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2341
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 2342
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->restrictEventListener(Ljava/util/EventListener;)V

    return-void
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/Class;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Servlet;",
            ">;)",
            "Ljavax/servlet/ServletRegistration$Dynamic;"
        }
    .end annotation

    .line 2232
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string p2, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 1

    .line 2246
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string p2, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addServlet(Ljava/lang/String;Ljavax/servlet/Servlet;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 1

    .line 2239
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string p2, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createFilter(Ljava/lang/Class;)Ljavax/servlet/Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Filter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 2253
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string v0, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createListener(Ljava/lang/Class;)Ljava/util/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 2368
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/EventListener;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2376
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2372
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createServlet(Ljava/lang/Class;)Ljavax/servlet/Servlet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Servlet;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 2260
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string v0, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs declareRoles([Ljava/lang/String;)V
    .locals 0

    .line 2424
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStarting()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2425
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 2426
    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez p1, :cond_1

    .line 2427
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    .line 2074
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2075
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2076
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2077
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 2073
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAttributeNames()Ljava/util/Enumeration;
    .locals 3

    monitor-enter p0

    .line 2088
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2089
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2091
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 2092
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2093
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2095
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 2096
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2097
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2099
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2087
    monitor-exit p0

    throw v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 2383
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->checkPermission(Ljava/security/Permission;)V

    .line 2384
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1735
    iget-object v3, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v3

    const-class v4, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v3

    .line 1738
    array-length v4, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x2f

    if-ge v7, v4, :cond_e

    aget-object v10, v3, v7

    if-nez v10, :cond_1

    :cond_0
    move/from16 v16, v4

    goto/16 :goto_5

    .line 1742
    :cond_1
    check-cast v10, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1743
    invoke-virtual {v10}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v11

    .line 1745
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v9, :cond_3

    :cond_2
    const-string v9, "/"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1749
    :cond_3
    iget-object v9, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_a

    .line 1751
    invoke-virtual {v10}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_0

    .line 1753
    iget-object v9, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v9

    array-length v12, v9

    move-object v13, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_9

    aget-object v14, v9, v8

    .line 1754
    invoke-virtual {v10}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v15

    array-length v5, v15

    move-object v6, v13

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v5, :cond_8

    aget-object v0, v15, v13

    .line 1755
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v6, :cond_4

    .line 1757
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v16, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-le v0, v4, :cond_5

    goto :goto_3

    :cond_4
    move/from16 v16, v4

    .line 1759
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object v6, v11

    .line 1763
    :cond_5
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1764
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move/from16 v16, v4

    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    move-object/from16 v0, p0

    goto :goto_2

    :cond_8
    move/from16 v16, v4

    add-int/lit8 v8, v8, 0x1

    move-object v13, v6

    move-object/from16 v0, p0

    goto :goto_1

    :cond_9
    move/from16 v16, v4

    move-object v8, v13

    goto :goto_5

    :cond_a
    move/from16 v16, v4

    if-eqz v8, :cond_b

    .line 1770
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-le v0, v4, :cond_c

    .line 1772
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object v8, v11

    .line 1776
    :cond_c
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1777
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 1782
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x0

    .line 1783
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0

    .line 1787
    :cond_f
    array-length v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6
    if-ge v4, v0, :cond_16

    aget-object v6, v3, v4

    if-nez v6, :cond_10

    goto :goto_7

    .line 1791
    :cond_10
    check-cast v6, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1792
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v7

    .line 1794
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_12

    :cond_11
    const-string v8, "/"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    :cond_12
    if-eqz v5, :cond_13

    .line 1797
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-le v8, v10, :cond_14

    .line 1799
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object v5, v7

    .line 1803
    :cond_14
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1804
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1808
    :cond_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x0

    .line 1809
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 1

    .line 1724
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 2

    .line 2182
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2185
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSessionTrackingModes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation

    .line 2267
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEffectiveMajorVersion()I
    .locals 1

    .line 2390
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_majorVersion:I

    return v0
.end method

.method public getEffectiveMinorVersion()I
    .locals 1

    .line 2396
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_minorVersion:I

    return v0
.end method

.method public getEffectiveSessionTrackingModes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation

    .line 2274
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterRegistration(Ljava/lang/String;)Ljavax/servlet/FilterRegistration;
    .locals 2

    .line 2281
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string v0, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFilterRegistrations()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljavax/servlet/FilterRegistration;",
            ">;"
        }
    .end annotation

    .line 2288
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2053
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .line 2064
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getJspConfigDescriptor()Ljavax/servlet/descriptor/JspConfigDescriptor;
    .locals 3

    .line 2412
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1831
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1833
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1835
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getMinorVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1906
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "/"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1908
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    .line 1909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1913
    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1916
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1918
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1923
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_3
    return-object v0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "/"

    .line 1869
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0x3f

    .line 1876
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 1878
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1879
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 1882
    :goto_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1885
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1886
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1887
    new-instance v4, Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {v4, v3, p1, v1, v2}, Lorg/eclipse/jetty/server/Dispatcher;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p1

    .line 1892
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_3
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1933
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1934
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    .line 1948
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 1951
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p1

    .line 1952
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1956
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    .line 1968
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 2

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jetty/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/jetty/server/Server;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServlet(Ljava/lang/String;)Ljavax/servlet/Servlet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getServletContextName()Ljava/lang/String;
    .locals 1

    .line 2172
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2174
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getServletNames()Ljava/util/Enumeration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2001
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServletRegistration(Ljava/lang/String;)Ljavax/servlet/ServletRegistration;
    .locals 2

    .line 2295
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string v0, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getServletRegistrations()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljavax/servlet/ServletRegistration;",
            ">;"
        }
    .end annotation

    .line 2302
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServlets()Ljava/util/Enumeration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2013
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;
    .locals 3

    .line 2309
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 2440
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    return v0
.end method

.method public log(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .line 2023
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2

    .line 2033
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2043
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 2142
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2144
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2147
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2148
    monitor-exit p0

    return-void

    .line 2151
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2152
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 2155
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2157
    new-instance v1, Ljavax/servlet/ServletContextAttributeEvent;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v2, v2, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v1, v2, p1, v0}, Ljavax/servlet/ServletContextAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2159
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2160
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletContextAttributeListener;

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2163
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2141
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    .line 2109
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2110
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_0

    .line 2113
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 2115
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2117
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2119
    new-instance v1, Ljavax/servlet/ServletContextAttributeEvent;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v2, v2, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v0, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-direct {v1, v2, p1, v3}, Ljavax/servlet/ServletContextAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2121
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 2123
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletContextAttributeListener;

    if-nez v0, :cond_2

    .line 2126
    invoke-interface {v2, v1}, Ljavax/servlet/ServletContextAttributeListener;->attributeAdded(Ljavax/servlet/ServletContextAttributeEvent;)V

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    .line 2128
    invoke-interface {v2, v1}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V

    goto :goto_3

    .line 2130
    :cond_3
    invoke-interface {v2, v1}, Ljavax/servlet/ServletContextAttributeListener;->attributeReplaced(Ljavax/servlet/ServletContextAttributeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 2133
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2108
    monitor-exit p0

    throw p1
.end method

.method public setEffectiveMajorVersion(I)V
    .locals 0

    .line 2401
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_majorVersion:I

    return-void
.end method

.method public setEffectiveMinorVersion(I)V
    .locals 0

    .line 2406
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_minorVersion:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 2435
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2199
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2201
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public setJspConfigDescriptor(Ljavax/servlet/descriptor/JspConfigDescriptor;)V
    .locals 0

    return-void
.end method

.method public setSessionTrackingModes(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;)V"
        }
    .end annotation

    .line 2316
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string v0, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServletContext@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
