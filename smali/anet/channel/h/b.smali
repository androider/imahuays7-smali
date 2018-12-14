.class public Lanet/channel/h/b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/h/b$a;
    }
.end annotation


# static fields
.field public static volatile a:J

.field private static b:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lanet/channel/h/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static d:Landroid/content/ComponentCallbacks2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lanet/channel/h/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 67
    new-instance v0, Lanet/channel/h/c;

    invoke-direct {v0}, Lanet/channel/h/c;-><init>()V

    sput-object v0, Lanet/channel/h/b;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 102
    new-instance v0, Lanet/channel/h/d;

    invoke-direct {v0}, Lanet/channel/h/d;-><init>()V

    sput-object v0, Lanet/channel/h/b;->d:Landroid/content/ComponentCallbacks2;

    return-void
.end method

.method public static a()V
    .locals 2

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 32
    invoke-static {}, Lanet/channel/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sget-object v1, Lanet/channel/h/b;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 33
    invoke-static {}, Lanet/channel/d;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lanet/channel/h/b;->d:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method public static a(Lanet/channel/h/b$a;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 40
    sget-object v0, Lanet/channel/h/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 2

    .line 49
    sget-boolean v0, Lanet/channel/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lanet/channel/d;->a:Z

    .line 51
    sget-object v0, Lanet/channel/h/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/h/b$a;

    .line 52
    invoke-interface {v1}, Lanet/channel/h/b$a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lanet/channel/h/b$a;)V
    .locals 1

    .line 45
    sget-object v0, Lanet/channel/h/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c()V
    .locals 2

    .line 58
    sget-boolean v0, Lanet/channel/d;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 59
    sput-boolean v0, Lanet/channel/d;->a:Z

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lanet/channel/h/b;->a:J

    .line 61
    sget-object v0, Lanet/channel/h/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/h/b$a;

    .line 62
    invoke-interface {v1}, Lanet/channel/h/b$a;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method
