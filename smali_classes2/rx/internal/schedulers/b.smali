.class public Lrx/internal/schedulers/b;
.super Lrx/d$a;
.source "NewThreadWorker.java"

# interfaces
.implements Lrx/f;


# static fields
.field public static final b:I

.field private static final e:Z

.field private static final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:Ljava/lang/Object;

.field private static final i:Ljava/lang/Object;


# instance fields
.field volatile a:Z

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lrx/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lrx/internal/schedulers/b;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/internal/schedulers/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "rx.scheduler.jdk6.purge-frequency-millis"

    const/16 v1, 0x3e8

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/schedulers/b;->b:I

    const-string v0, "rx.scheduler.jdk6.purge-force"

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 57
    invoke-static {}, Lrx/internal/util/a;->a()I

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 61
    :goto_0
    sput-boolean v0, Lrx/internal/schedulers/b;->e:Z

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/schedulers/b;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 203
    invoke-direct {p0}, Lrx/d$a;-><init>()V

    const/4 v0, 0x1

    .line 204
    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 206
    invoke-static {p1}, Lrx/internal/schedulers/b;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 208
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v0}, Lrx/internal/schedulers/b;->a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 210
    :cond_0
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->d()Lrx/d/e;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/schedulers/b;->d:Lrx/d/e;

    .line 211
    iput-object p1, p0, Lrx/internal/schedulers/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static a()V
    .locals 3

    .line 104
    :try_start_0
    sget-object v0, Lrx/internal/schedulers/b;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 107
    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 115
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/d/d;->b()Lrx/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/d/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 98
    sget-object v0, Lrx/internal/schedulers/b;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 10

    .line 71
    :goto_0
    sget-object v0, Lrx/internal/schedulers/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 75
    new-instance v1, Lrx/internal/util/RxThreadFactory;

    const-string v2, "RxSchedulerPurge-"

    invoke-direct {v1, v2}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 76
    sget-object v0, Lrx/internal/schedulers/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v4, Lrx/internal/schedulers/b$1;

    invoke-direct {v4}, Lrx/internal/schedulers/b$1;-><init>()V

    sget v0, Lrx/internal/schedulers/b;->b:I

    int-to-long v5, v0

    sget v0, Lrx/internal/schedulers/b;->b:I

    int-to-long v7, v0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 90
    :goto_1
    sget-object v0, Lrx/internal/schedulers/b;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 86
    :cond_1
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method

.method public static b(Ljava/util/concurrent/ScheduledExecutorService;)Z
    .locals 5

    .line 139
    sget-boolean v0, Lrx/internal/schedulers/b;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 140
    instance-of v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_3

    .line 145
    sget-object v0, Lrx/internal/schedulers/b;->h:Ljava/lang/Object;

    .line 147
    sget-object v2, Lrx/internal/schedulers/b;->i:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_2

    .line 152
    invoke-static {p0}, Lrx/internal/schedulers/b;->c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_0

    .line 154
    :cond_1
    sget-object v2, Lrx/internal/schedulers/b;->i:Ljava/lang/Object;

    :goto_0
    sput-object v2, Lrx/internal/schedulers/b;->h:Ljava/lang/Object;

    goto :goto_1

    .line 160
    :cond_2
    check-cast v0, Ljava/lang/reflect/Method;

    goto :goto_1

    .line 163
    :cond_3
    invoke-static {p0}, Lrx/internal/schedulers/b;->c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    .line 168
    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 171
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->b()Lrx/d/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lrx/d/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    return v1
.end method

.method static c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;
    .locals 7

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 190
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setRemoveOnCancelPolicy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 193
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    aget-object v4, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/f;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/b;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 1

    .line 221
    iget-boolean v0, p0, Lrx/internal/schedulers/b;->a:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lrx/f/c;->a()Lrx/f;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/schedulers/b;->b(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/c;)Lrx/internal/schedulers/ScheduledAction;
    .locals 3

    .line 264
    iget-object v0, p0, Lrx/internal/schedulers/b;->d:Lrx/d/e;

    invoke-virtual {v0, p1}, Lrx/d/e;->a(Lrx/b/a;)Lrx/b/a;

    move-result-object p1

    .line 265
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v0, p1, p5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/b/a;Lrx/internal/util/c;)V

    .line 266
    invoke-virtual {p5, v0}, Lrx/internal/util/c;->a(Lrx/f;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_0

    .line 270
    iget-object p1, p0, Lrx/internal/schedulers/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lrx/internal/schedulers/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 274
    :goto_0
    invoke-virtual {v0, p1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public b(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;
    .locals 3

    .line 235
    iget-object v0, p0, Lrx/internal/schedulers/b;->d:Lrx/d/e;

    invoke-virtual {v0, p1}, Lrx/d/e;->a(Lrx/b/a;)Lrx/b/a;

    move-result-object p1

    .line 236
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/b/a;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_0

    .line 239
    iget-object p1, p0, Lrx/internal/schedulers/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lrx/internal/schedulers/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 243
    :goto_0
    invoke-virtual {v0, p1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lrx/internal/schedulers/b;->a:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lrx/internal/schedulers/b;->a:Z

    .line 282
    iget-object v0, p0, Lrx/internal/schedulers/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 283
    iget-object v0, p0, Lrx/internal/schedulers/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lrx/internal/schedulers/b;->a(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method
