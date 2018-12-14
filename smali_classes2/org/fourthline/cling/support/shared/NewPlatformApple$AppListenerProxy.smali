.class Lorg/fourthline/cling/support/shared/NewPlatformApple$AppListenerProxy;
.super Ljava/lang/Object;
.source "NewPlatformApple.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/shared/NewPlatformApple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppListenerProxy"
.end annotation


# instance fields
.field private object:Ljava/lang/Object;

.field private shutdownHandler:Lorg/fourthline/cling/support/shared/ShutdownHandler;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lorg/fourthline/cling/support/shared/ShutdownHandler;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/NewPlatformApple$AppListenerProxy;->object:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lorg/fourthline/cling/support/shared/NewPlatformApple$AppListenerProxy;->shutdownHandler:Lorg/fourthline/cling/support/shared/ShutdownHandler;

    return-void
.end method

.method public static newInstance(Ljava/lang/Object;Lorg/fourthline/cling/support/shared/ShutdownHandler;)Ljava/lang/Object;
    .locals 3

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lorg/fourthline/cling/support/shared/NewPlatformApple$AppListenerProxy;

    invoke-direct {v2, p0, p1}, Lorg/fourthline/cling/support/shared/NewPlatformApple$AppListenerProxy;-><init>(Ljava/lang/Object;Lorg/fourthline/cling/support/shared/ShutdownHandler;)V

    .line 51
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "handleQuit"

    .line 66
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object p2, p0, Lorg/fourthline/cling/support/shared/NewPlatformApple$AppListenerProxy;->shutdownHandler:Lorg/fourthline/cling/support/shared/ShutdownHandler;

    if-eqz p2, :cond_1

    .line 68
    iget-object p2, p0, Lorg/fourthline/cling/support/shared/NewPlatformApple$AppListenerProxy;->shutdownHandler:Lorg/fourthline/cling/support/shared/ShutdownHandler;

    invoke-interface {p2}, Lorg/fourthline/cling/support/shared/ShutdownHandler;->shutdown()V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/NewPlatformApple$AppListenerProxy;->object:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    :catch_0
    :cond_1
    :goto_0
    return-object p1
.end method
