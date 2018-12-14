.class public Lcom/alibaba/sdk/android/httpdns/t;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/alibaba/sdk/android/httpdns/t;


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/t;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/t;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/t;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/t;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/t;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/t;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/t;->d:Lcom/alibaba/sdk/android/httpdns/t;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/t;->d:Lcom/alibaba/sdk/android/httpdns/t;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/t;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/t;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/t;->d:Lcom/alibaba/sdk/android/httpdns/t;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/t;->d:Lcom/alibaba/sdk/android/httpdns/t;

    return-object v0
.end method

.method private c()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/t;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/t;->a:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v6, v4, v2

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/t;->a:J

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/t;->c:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/t;->b:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/t;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/t;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "launch a sniff task"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/p;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/t;->c:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/n;->c:Lcom/alibaba/sdk/android/httpdns/n;

    invoke-direct {p1, v0, v1}, Lcom/alibaba/sdk/android/httpdns/p;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/n;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/p;->a(I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/t;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/t;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "hostname is null or sniff too often or sniffer is turned off"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/t;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/t;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
