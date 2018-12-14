.class public Lcom/umeng/message/a/d;
.super Ljava/lang/Object;
.source "UmengThreadPoolExecutorFactory.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.umeng.message.a.d"

.field private static volatile b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static c:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/umeng/message/a/d$1;

    invoke-direct {v0}, Lcom/umeng/message/a/d$1;-><init>()V

    sput-object v0, Lcom/umeng/message/a/d;->c:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 4

    .line 20
    sget-object v0, Lcom/umeng/message/a/d;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/umeng/message/a/d;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/umeng/message/a/d;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    sget-object v3, Lcom/umeng/message/a/d;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/umeng/message/a/d;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/umeng/message/a/d;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    .line 32
    :try_start_0
    invoke-static {}, Lcom/umeng/message/a/d;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    sget-object p0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p0, Lcom/umeng/message/a/d;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UmengThreadPoolExecutorFactory execute exception"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v2, v0}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 40
    :try_start_0
    invoke-static {}, Lcom/umeng/message/a/d;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    sget-object p0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p0, Lcom/umeng/message/a/d;->a:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "UmengThreadPoolExecutorFactory schedule exception"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p0, p3, p1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
