.class public Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Z

.field private final d:Landroid/hardware/Camera;

.field private e:Z

.field private f:Z

.field private g:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->b:Ljava/util/Collection;

    .line 39
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->b:Ljava/util/Collection;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->b:Ljava/util/Collection;

    const-string v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->d:Landroid/hardware/Camera;

    .line 51
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    .line 52
    sget-object p2, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->b:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->c:Z

    .line 53
    sget-object p2, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current focus mode \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'; use auto focus? "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->c:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->a()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->g:Landroid/os/AsyncTask;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 69
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 71
    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    :goto_0
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->g:Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 75
    :try_start_2
    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->a:Ljava/lang/String;

    const-string v2, "Could not request auto focus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 64
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->g:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->g:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->g:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->g:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 98
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->g:Landroid/os/AsyncTask;

    .line 83
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->f:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    :try_start_2
    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->a:Ljava/lang/String;

    const-string v2, "Unexpected exception while focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 80
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 108
    :try_start_0
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->e:Z

    .line 109
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->c:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    :try_start_2
    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->a:Ljava/lang/String;

    const-string v2, "Unexpected exception while cancelling focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 107
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 59
    :try_start_0
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->f:Z

    .line 60
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    throw p1
.end method
