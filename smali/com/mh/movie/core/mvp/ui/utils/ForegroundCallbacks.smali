.class public Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;
.super Ljava/lang/Object;
.source "ForegroundCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$Listener;
    }
.end annotation


# static fields
.field public static final CHECK_DELAY:J = 0x1f4L

.field public static final TAG:Ljava/lang/String; = "com.mh.movie.core.mvp.ui.utils.ForegroundCallbacks"

.field private static instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;


# instance fields
.field private check:Ljava/lang/Runnable;

.field private foreground:Z

.field private handler:Landroid/os/Handler;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->paused:Z

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->handler:Landroid/os/Handler;

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->foreground:Z

    return p0
.end method

.method static synthetic access$002(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->foreground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->paused:Z

    return p0
.end method

.method static synthetic access$200(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;)Ljava/util/List;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->listeners:Ljava/util/List;

    return-object p0
.end method

.method public static get()Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;
    .locals 2

    .line 50
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Foreground is not initialised - invoke at least once with parameterised init/get"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    return-object v0
.end method

.method public static get(Landroid/app/Application;)Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;
    .locals 1

    .line 32
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    if-nez v0, :cond_0

    .line 33
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->init(Landroid/app/Application;)Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    .line 35
    :cond_0
    sget-object p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;
    .locals 1

    .line 38
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 40
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->init(Landroid/app/Application;)Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Foreground is not initialised and cannot obtain the Application object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_1
    sget-object p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    return-object p0
.end method

.method public static init(Landroid/app/Application;)Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;
    .locals 1

    .line 25
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    .line 27
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 29
    :cond_0
    sget-object p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->instance:Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$Listener;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isBackground()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->foreground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isForeground()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->foreground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->paused:Z

    .line 95
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->check:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->check:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$1;-><init>(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->check:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->paused:Z

    .line 72
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->foreground:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 73
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->foreground:Z

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "went foreground"

    .line 77
    invoke-static {p1}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$Listener;

    .line 81
    :try_start_0
    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$Listener;->onBecameForeground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener threw exception!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "still foreground"

    .line 89
    invoke-static {p1}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public removeListener(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$Listener;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
