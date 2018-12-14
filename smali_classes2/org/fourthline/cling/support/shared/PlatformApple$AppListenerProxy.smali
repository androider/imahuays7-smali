.class Lorg/fourthline/cling/support/shared/PlatformApple$AppListenerProxy;
.super Ljava/lang/Object;
.source "PlatformApple.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/shared/PlatformApple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppListenerProxy"
.end annotation


# instance fields
.field private appController:Lorg/seamless/swing/Controller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/seamless/swing/Controller<",
            "Ljavax/swing/JFrame;",
            ">;"
        }
    .end annotation
.end field

.field private object:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lorg/seamless/swing/Controller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/seamless/swing/Controller<",
            "Ljavax/swing/JFrame;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/PlatformApple$AppListenerProxy;->object:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lorg/fourthline/cling/support/shared/PlatformApple$AppListenerProxy;->appController:Lorg/seamless/swing/Controller;

    return-void
.end method

.method public static newInstance(Ljava/lang/Object;Lorg/seamless/swing/Controller;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/seamless/swing/Controller<",
            "Ljavax/swing/JFrame;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lorg/fourthline/cling/support/shared/PlatformApple$AppListenerProxy;

    invoke-direct {v2, p0, p1}, Lorg/fourthline/cling/support/shared/PlatformApple$AppListenerProxy;-><init>(Ljava/lang/Object;Lorg/seamless/swing/Controller;)V

    .line 54
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

    .line 69
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p2, p0, Lorg/fourthline/cling/support/shared/PlatformApple$AppListenerProxy;->appController:Lorg/seamless/swing/Controller;

    if-eqz p2, :cond_1

    .line 71
    iget-object p2, p0, Lorg/fourthline/cling/support/shared/PlatformApple$AppListenerProxy;->appController:Lorg/seamless/swing/Controller;

    invoke-interface {p2}, Lorg/seamless/swing/Controller;->dispose()V

    .line 72
    iget-object p2, p0, Lorg/fourthline/cling/support/shared/PlatformApple$AppListenerProxy;->appController:Lorg/seamless/swing/Controller;

    invoke-interface {p2}, Lorg/seamless/swing/Controller;->getView()Ljava/awt/Container;

    move-result-object p2

    check-cast p2, Ljavax/swing/JFrame;

    invoke-virtual {p2}, Ljavax/swing/JFrame;->dispose()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/PlatformApple$AppListenerProxy;->object:Ljava/lang/Object;

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
