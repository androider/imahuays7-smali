.class public Lcom/taobao/accs/common/a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/common/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static volatile b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/taobao/accs/common/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ThreadPoolExecutorFactory"

    const-string p2, "ThreadPoolExecutorFactory schedule"

    const/4 p3, 0x0

    .line 49
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, p3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 6

    .line 32
    sget-object v0, Lcom/taobao/accs/common/a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/taobao/accs/common/a;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/taobao/accs/common/a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/common/a$a;

    const-string v3, "ACCS"

    invoke-direct {v2, v3}, Lcom/taobao/accs/common/a$a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/taobao/accs/common/a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 36
    sget-object v1, Lcom/taobao/accs/common/a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 37
    sget-object v1, Lcom/taobao/accs/common/a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/accs/common/a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    .line 56
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ThreadPoolExecutorFactory"

    const-string v1, "ThreadPoolExecutorFactory execute"

    const/4 v2, 0x0

    .line 58
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p0, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 6

    .line 63
    sget-object v0, Lcom/taobao/accs/common/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/taobao/accs/common/a;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/taobao/accs/common/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/common/a$a;

    const-string v3, "ACCS-SEND"

    invoke-direct {v2, v3}, Lcom/taobao/accs/common/a$a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/taobao/accs/common/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 67
    sget-object v1, Lcom/taobao/accs/common/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 68
    sget-object v1, Lcom/taobao/accs/common/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/accs/common/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 11
    sget-object v0, Lcom/taobao/accs/common/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method
