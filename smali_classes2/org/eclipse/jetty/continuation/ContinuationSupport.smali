.class public Lorg/eclipse/jetty/continuation/ContinuationSupport;
.super Ljava/lang/Object;
.source "ContinuationSupport.java"


# static fields
.field static final __jetty6:Z

.field static final __newJetty6Continuation:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/eclipse/jetty/continuation/Continuation;",
            ">;"
        }
    .end annotation
.end field

.field static final __newServlet3Continuation:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/eclipse/jetty/continuation/Continuation;",
            ">;"
        }
    .end annotation
.end field

.field static final __servlet3:Z

.field static final __waitingContinuation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    :try_start_0
    const-class v3, Ljavax/servlet/ServletRequest;

    const-string v4, "startAsync"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 49
    const-class v3, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "org.eclipse.jetty.continuation.Servlet3Continuation"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/eclipse/jetty/continuation/Continuation;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 50
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljavax/servlet/ServletRequest;

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v0

    const/4 v3, 0x0

    .line 58
    :goto_1
    sput-boolean v3, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    .line 59
    sput-object v4, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 58
    sput-boolean v2, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    .line 59
    sput-object v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    throw v1

    .line 58
    :catch_0
    sput-boolean v2, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    .line 59
    sput-object v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    .line 66
    :goto_2
    :try_start_1
    const-class v3, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "org.mortbay.util.ajax.Continuation"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_3

    .line 70
    const-class v4, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "org.eclipse.jetty.continuation.Jetty6Continuation"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/eclipse/jetty/continuation/Continuation;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    .line 71
    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljavax/servlet/ServletRequest;

    aput-object v6, v5, v2

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :cond_3
    move-object v3, v0

    const/4 v1, 0x0

    .line 79
    :goto_4
    sput-boolean v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    .line 80
    sput-object v3, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    goto :goto_5

    :catchall_1
    move-exception v1

    .line 79
    sput-boolean v2, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    .line 80
    sput-object v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    throw v1

    .line 79
    :catch_1
    sput-boolean v2, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    .line 80
    sput-object v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    .line 86
    :goto_5
    :try_start_2
    const-class v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.mortbay.util.ajax.WaitingContinuation"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    sput-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    goto :goto_6

    :catchall_2
    move-exception v1

    sput-object v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    throw v1

    :catch_2
    sput-object v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    :goto_6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContinuation(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/continuation/Continuation;
    .locals 5

    const-string v0, "org.eclipse.jetty.continuation"

    .line 110
    invoke-interface {p0, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/Continuation;

    if-eqz v0, :cond_0

    return-object v0

    .line 114
    :cond_0
    :goto_0
    instance-of v0, p0, Ljavax/servlet/ServletRequestWrapper;

    if-eqz v0, :cond_1

    .line 115
    check-cast p0, Ljavax/servlet/ServletRequestWrapper;

    invoke-virtual {p0}, Ljavax/servlet/ServletRequestWrapper;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object p0

    goto :goto_0

    .line 117
    :cond_1
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 121
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/Continuation;

    const-string v1, "org.eclipse.jetty.continuation"

    .line 122
    invoke-interface {p0, v1, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 131
    :cond_2
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    if-eqz v0, :cond_5

    const-string v0, "org.mortbay.jetty.ajax.Continuation"

    .line 133
    invoke-interface {p0, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 136
    :try_start_1
    sget-object v3, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    if-eqz v3, :cond_4

    sget-object v3, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 139
    :cond_3
    sget-object v3, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/Continuation;

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    .line 137
    :cond_4
    :goto_1
    new-instance v0, Lorg/eclipse/jetty/continuation/FauxContinuation;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;-><init>(Ljavax/servlet/ServletRequest;)V

    :goto_2
    const-string v1, "org.eclipse.jetty.continuation"

    .line 140
    invoke-interface {p0, v1, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 145
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 149
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "!(Jetty || Servlet 3.0 || ContinuationFilter)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getContinuation(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/eclipse/jetty/continuation/Continuation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    invoke-static {p0}, Lorg/eclipse/jetty/continuation/ContinuationSupport;->getContinuation(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/continuation/Continuation;

    move-result-object p0

    return-object p0
.end method
