.class public Lanet/channel/strategy/utils/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lanet/channel/strategy/utils/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 5

    .line 21
    sget-object v0, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lanet/channel/strategy/utils/a;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x2

    new-instance v3, Lanet/channel/strategy/utils/b;

    invoke-direct {v3}, Lanet/channel/strategy/utils/b;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 33
    sget-object v1, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 34
    sget-object v1, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 36
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 4

    .line 43
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/utils/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "awcn.AmdcThreadPoolExecutor"

    const-string v1, "submit task failed"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 45
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, p0, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 2

    .line 51
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/utils/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "awcn.AmdcThreadPoolExecutor"

    const-string p2, "schedule task failed"

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0, p0, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 14
    sget-object v0, Lanet/channel/strategy/utils/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method
