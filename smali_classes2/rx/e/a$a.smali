.class final Lrx/e/a$a;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lrx/e/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrx/f/b;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 53
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Lrx/e/a$a;->a:J

    .line 54
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 55
    new-instance p1, Lrx/f/b;

    invoke-direct {p1}, Lrx/f/b;-><init>()V

    iput-object p1, p0, Lrx/e/a$a;->c:Lrx/f/b;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 60
    invoke-static {}, Lrx/e/a;->d()Lrx/internal/util/RxThreadFactory;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lrx/internal/schedulers/b;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 62
    new-instance v1, Lrx/e/a$a$1;

    invoke-direct {v1, p0}, Lrx/e/a$a$1;-><init>(Lrx/e/a$a;)V

    iget-wide v2, p0, Lrx/e/a$a;->a:J

    iget-wide v4, p0, Lrx/e/a$a;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    .line 71
    :goto_1
    iput-object p1, p0, Lrx/e/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 72
    iput-object p2, p0, Lrx/e/a$a;->e:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method a()Lrx/e/a$c;
    .locals 2

    .line 76
    iget-object v0, p0, Lrx/e/a$a;->c:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lrx/e/a;->a:Lrx/e/a$c;

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e/a$c;

    if-eqz v0, :cond_0

    return-object v0

    .line 87
    :cond_1
    new-instance v0, Lrx/e/a$c;

    invoke-static {}, Lrx/e/a;->e()Lrx/internal/util/RxThreadFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/e/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 88
    iget-object v1, p0, Lrx/e/a$a;->c:Lrx/f/b;

    invoke-virtual {v1, v0}, Lrx/f/b;->a(Lrx/f;)V

    return-object v0
.end method

.method a(Lrx/e/a$c;)V
    .locals 6

    .line 94
    invoke-virtual {p0}, Lrx/e/a$a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/e/a$a;->a:J

    add-long v4, v0, v2

    invoke-virtual {p1, v4, v5}, Lrx/e/a$c;->a(J)V

    .line 96
    iget-object v0, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method b()V
    .locals 7

    .line 100
    iget-object v0, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lrx/e/a$a;->c()J

    move-result-wide v0

    .line 103
    iget-object v2, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/e/a$c;

    .line 104
    invoke-virtual {v3}, Lrx/e/a$c;->b()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_1

    .line 105
    iget-object v4, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lrx/e/a$a;->c:Lrx/f/b;

    invoke-virtual {v4, v3}, Lrx/f/b;->b(Lrx/f;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method c()J
    .locals 2

    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method d()V
    .locals 2

    .line 123
    :try_start_0
    iget-object v0, p0, Lrx/e/a$a;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lrx/e/a$a;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 126
    :cond_0
    iget-object v0, p0, Lrx/e/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lrx/e/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    iget-object v0, p0, Lrx/e/a$a;->c:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/e/a$a;->c:Lrx/f/b;

    invoke-virtual {v1}, Lrx/f/b;->unsubscribe()V

    throw v0
.end method
