.class Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;
.super Ljava/lang/Object;
.source "ServletHolder.java"

# interfaces
.implements Ljavax/servlet/Servlet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleThreadedWrapper"
.end annotation


# instance fields
.field _stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljavax/servlet/Servlet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHolder;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;Lorg/eclipse/jetty/servlet/ServletHolder$1;)V
    .locals 0

    .line 859
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 865
    monitor-enter p0

    .line 867
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 868
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;

    invoke-interface {v0}, Ljavax/servlet/Servlet;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 869
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .locals 1

    .line 874
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$300(Lorg/eclipse/jetty/servlet/ServletHolder;)Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    move-result-object v0

    return-object v0
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 884
    monitor-enter p0

    .line 886
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 890
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->newInstance()Ljavax/servlet/Servlet;

    move-result-object v0

    .line 891
    invoke-interface {v0, p1}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V

    .line 892
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 900
    :try_start_2
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 896
    throw p1

    .line 903
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    monitor-enter p0

    .line 911
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 912
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    .line 917
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->newInstance()Ljavax/servlet/Servlet;

    move-result-object v0

    .line 918
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$300(Lorg/eclipse/jetty/servlet/ServletHolder;)Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 929
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 933
    :try_start_3
    invoke-interface {v0, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 937
    monitor-enter p0

    .line 939
    :try_start_4
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 937
    monitor-enter p0

    .line 939
    :try_start_5
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catch_0
    move-exception p1

    .line 926
    :try_start_7
    new-instance p2, Ljavax/servlet/ServletException;

    invoke-direct {p2, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 922
    throw p1

    :catchall_3
    move-exception p1

    .line 929
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method
