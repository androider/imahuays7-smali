.class public Lcom/taobao/accs/f/l;
.super Lcom/taobao/accs/f/c;
.source "Taobao"

# interfaces
.implements Lanet/channel/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/f/l$a;
    }
.end annotation


# instance fields
.field private n:Z

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 75
    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/accs/f/l;->n:Z

    .line 76
    iget-object v0, p0, Lcom/taobao/accs/f/l;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/f/l;->a(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/f/l;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p0

    throw v0
.end method

.method public a(IIZLjava/lang/String;)V
    .locals 3

    .line 311
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "detail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " dataId:"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " needRetry:"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p4, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p4

    new-instance v0, Lcom/taobao/accs/f/n;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/taobao/accs/f/n;-><init>(Lcom/taobao/accs/f/l;IZI)V

    invoke-virtual {p4, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    .line 386
    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/accs/f/l;->g:Z

    if-eqz v1, :cond_0

    return-void

    .line 389
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/accs/f/c;->a(Landroid/content/Context;)V

    .line 391
    iget-object p1, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {p1}, Lcom/taobao/accs/b;->d()Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->h()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {v1}, Lcom/taobao/accs/b;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "close keepalive"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 398
    :goto_0
    iget-object v3, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {v3}, Lcom/taobao/accs/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanet/channel/b;->a(Ljava/lang/String;)Lanet/channel/b;

    move-result-object v3

    .line 399
    invoke-static {v3}, Lanet/channel/g;->a(Lanet/channel/b;)Lanet/channel/g;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v1}, Lcom/taobao/accs/f/l;->a(Lanet/channel/g;Ljava/lang/String;Z)V

    .line 401
    iput-boolean v2, p0, Lcom/taobao/accs/f/l;->g:Z

    .line 402
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "init awcn success!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 404
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initAwcn"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(Lanet/channel/g;Ljava/lang/String;Z)V
    .locals 8

    .line 413
    iget-object v0, p0, Lcom/taobao/accs/f/l;->o:Ljava/util/Set;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/f/l;->o:Ljava/util/Set;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/f/l;->o:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x1

    .line 420
    new-instance v5, Lcom/taobao/accs/f/l$a;

    invoke-direct {v5, p0, p2}, Lcom/taobao/accs/f/l$a;-><init>(Lcom/taobao/accs/f/c;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v2, p2

    move v3, p3

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Lanet/channel/h;->a(Ljava/lang/String;ZZLanet/channel/e;Lanet/channel/e/b;Lanet/channel/c;)Lanet/channel/h;

    move-result-object p3

    .line 421
    invoke-virtual {p1, p3}, Lanet/channel/g;->a(Lanet/channel/h;)V

    .line 422
    iget-object p3, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {p3}, Lcom/taobao/accs/b;->h()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lanet/channel/g;->a(Ljava/lang/String;I)V

    .line 423
    iget-object p1, p0, Lcom/taobao/accs/f/l;->o:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object p1

    const-string p3, "registerSessionInfo"

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "host"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p1, p3, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/taobao/accs/b;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "updateConfig null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "InAppConn_"

    const-string v4, "updateConfig"

    const/4 v5, 0x4

    .line 433
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "old"

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {v6}, Lcom/taobao/accs/b;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "new"

    aput-object v6, v5, v1

    const/4 v6, 0x3

    invoke-virtual {p1}, Lcom/taobao/accs/b;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    iput-object p1, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    .line 435
    iget-object p1, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {p1}, Lcom/taobao/accs/b;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/f/l;->b:Ljava/lang/String;

    .line 436
    iget-object p1, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {p1}, Lcom/taobao/accs/b;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/f/l;->m:Ljava/lang/String;

    .line 438
    iget-object p1, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {p1}, Lcom/taobao/accs/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lanet/channel/g;->a(Ljava/lang/String;)Lanet/channel/g;

    move-result-object p1

    .line 439
    iget-object v3, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {v3}, Lcom/taobao/accs/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lanet/channel/g;->b(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {v3}, Lcom/taobao/accs/b;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "close keepalive"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 446
    :goto_0
    iget-object v4, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {v4}, Lcom/taobao/accs/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v3}, Lcom/taobao/accs/f/l;->a(Lanet/channel/g;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v3, "InAppConn_"

    const-string v4, "updateConfig"

    .line 448
    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "excetion"

    aput-object v5, v1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v3, v4, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected a(Lcom/taobao/accs/data/Message;Z)V
    .locals 5

    .line 83
    iget-boolean p2, p0, Lcom/taobao/accs/f/l;->n:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 88
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/a;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p2

    const/16 v1, 0x3e8

    if-le p2, v1, :cond_1

    .line 89
    new-instance p2, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "accs"

    invoke-direct {p2, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 91
    :cond_1
    invoke-static {}, Lcom/taobao/accs/common/a;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    new-instance v1, Lcom/taobao/accs/f/m;

    invoke-direct {v1, p0, p1}, Lcom/taobao/accs/f/m;-><init>(Lcom/taobao/accs/f/l;Lcom/taobao/accs/data/Message;)V

    iget-wide v2, p1, Lcom/taobao/accs/data/Message;->O:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 185
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 188
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/taobao/accs/f/l;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/taobao/accs/f/l;->e:Lcom/taobao/accs/data/b;

    invoke-virtual {v1, p1}, Lcom/taobao/accs/data/b;->b(Lcom/taobao/accs/data/Message;)V

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/f/l;->e:Lcom/taobao/accs/data/b;

    iget-object v1, v1, Lcom/taobao/accs/data/b;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 200
    iget-object v1, p0, Lcom/taobao/accs/f/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDeviceId(Ljava/lang/String;)V

    .line 202
    iget v1, p0, Lcom/taobao/accs/f/l;->c:I

    invoke-virtual {p2, v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setConnType(I)V

    .line 203
    invoke-virtual {p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onEnterQueueData()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 209
    iget-object v1, p0, Lcom/taobao/accs/f/l;->e:Lcom/taobao/accs/data/b;

    const/4 v2, -0x8

    invoke-virtual {v1, p1, v2}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    .line 210
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "send error"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p2, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :catch_1
    iget-object p2, p0, Lcom/taobao/accs/f/l;->e:Lcom/taobao/accs/data/b;

    const v1, 0x11178

    invoke-virtual {p2, p1, v1}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    .line 207
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send queue full count:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/accs/common/a;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void

    .line 84
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not running or msg null! "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/accs/f/l;->n:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 258
    :try_start_0
    iget-object p2, p0, Lcom/taobao/accs/f/l;->e:Lcom/taobao/accs/data/b;

    invoke-virtual {p2, p1}, Lcom/taobao/accs/data/b;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p2, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-eqz p2, :cond_0

    .line 260
    iget-object p2, p0, Lcom/taobao/accs/f/l;->i:Lcom/taobao/accs/b;

    invoke-virtual {p2}, Lcom/taobao/accs/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lanet/channel/g;->a(Ljava/lang/String;)Lanet/channel/g;

    move-result-object p2

    iget-object p1, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lanet/channel/g;->a(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1}, Lanet/channel/Session;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onTimeOut"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/taobao/accs/f/l;->f:I

    return-void
.end method

.method public c()Lcom/taobao/accs/ut/a/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/taobao/accs/f/l;->e:Lcom/taobao/accs/data/b;

    iget-object v1, v1, Lcom/taobao/accs/data/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 369
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "customDataId"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v1
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppConn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/f/l;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    .line 220
    invoke-virtual {p0}, Lcom/taobao/accs/f/l;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/f/l;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iput-boolean v2, p0, Lcom/taobao/accs/f/l;->n:Z

    return-void
.end method
