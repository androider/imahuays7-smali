.class public Lcom/raizlabs/android/dbflow/structure/b/a/b;
.super Ljava/lang/Thread;
.source "DefaultTransactionQueue.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/d;


# instance fields
.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/raizlabs/android/dbflow/structure/b/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->b:Z

    .line 29
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/b/a/b;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 105
    :try_start_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/b/a/b;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    :try_start_2
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v1, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/Throwable;)V

    .line 111
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 2
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 2
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 2

    .line 35
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/16 v0, 0xa

    .line 36
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 40
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/b/a/g;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->b:Z

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->d()V

    goto :goto_0

    .line 42
    :catch_0
    monitor-enter p0

    .line 43
    :try_start_1
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->b:Z

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 46
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 46
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 49
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
