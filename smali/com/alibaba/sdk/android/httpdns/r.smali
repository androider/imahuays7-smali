.class public Lcom/alibaba/sdk/android/httpdns/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "https://"

.field private static d:Z = false

.field private static e:Ljava/lang/String;

.field private static f:J

.field private static h:Lcom/alibaba/sdk/android/httpdns/r;


# instance fields
.field private b:I

.field private c:Landroid/content/SharedPreferences;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->c:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->g:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->i:J

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/r;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/r;->h:Lcom/alibaba/sdk/android/httpdns/r;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/r;->h:Lcom/alibaba/sdk/android/httpdns/r;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/r;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/r;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/r;->h:Lcom/alibaba/sdk/android/httpdns/r;

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
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/r;->h:Lcom/alibaba/sdk/android/httpdns/r;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->b:I

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/h;->c:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->b:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->b:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    return-void
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/r;->d:Z

    if-nez v0, :cond_5

    const-class v0, Lcom/alibaba/sdk/android/httpdns/r;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v1, Lcom/alibaba/sdk/android/httpdns/r;->d:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "httpdns_config_cache"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/r;->c:Landroid/content/SharedPreferences;

    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/r;->c:Landroid/content/SharedPreferences;

    const-string v2, "httpdns_server_ips"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alibaba/sdk/android/httpdns/r;->e:Ljava/lang/String;

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/r;->e:Ljava/lang/String;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/r;->e:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/h;->a([Ljava/lang/String;)Z

    :cond_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/r;->c:Landroid/content/SharedPreferences;

    const-string v2, "schedule_center_last_request_time"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sput-wide v5, Lcom/alibaba/sdk/android/httpdns/r;->f:J

    sget-wide v5, Lcom/alibaba/sdk/android/httpdns/r;->f:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alibaba/sdk/android/httpdns/r;->f:J

    const/4 p1, 0x0

    sub-long v6, v2, v4

    const-wide/32 v2, 0x5265c00

    cmp-long p1, v6, v2

    if-ltz p1, :cond_3

    :cond_2
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/t;->a()Lcom/alibaba/sdk/android/httpdns/t;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/httpdns/t;->a(Z)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/r;->b()V

    :cond_3
    const/4 p1, 0x1

    sput-boolean p1, Lcom/alibaba/sdk/android/httpdns/r;->d:Z

    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lcom/alibaba/sdk/android/httpdns/s;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->b:I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/s;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/b;->b(Z)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/s;->b()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/r;->a([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Scheduler center update success"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->i:J

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/u;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/r;->d()V

    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/r;->b:I

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->i:J

    const-string p1, "Scheduler center update failed"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/u;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a([Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/h;->a([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/r;->c:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/r;->c:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "httpdns_server_ips"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "schedule_center_last_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/r;->i:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    const-wide/32 v0, 0x493e0

    cmp-long v2, v4, v0

    if-ltz v2, :cond_0

    const-string v0, "update server ips from schedule center."

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->b:I

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/r;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/q;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/h;->c:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/alibaba/sdk/android/httpdns/q;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    const-string v0, "update server ips from schedule center too often, give up. "

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/u;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/h;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/r;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sc/httpdns_config?account_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&platform=android&sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.1.3.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
