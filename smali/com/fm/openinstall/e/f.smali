.class public Lcom/fm/openinstall/e/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/fm/openinstall/e/f;


# instance fields
.field private b:Ljava/util/concurrent/LinkedBlockingQueue;

.field private c:Lcom/fm/openinstall/f/c;

.field private d:Ljava/lang/Long;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Ljava/lang/Object;

.field private volatile h:Z

.field private i:Ljava/lang/Thread;

.field private j:Lcom/fm/openinstall/e/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/fm/openinstall/e/f;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const-class v0, Lcom/fm/openinstall/e/f;

    invoke-static {v0}, Lcom/fm/openinstall/f/c;->a(Ljava/lang/Class;)Lcom/fm/openinstall/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fm/openinstall/e/f;->c:Lcom/fm/openinstall/f/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fm/openinstall/e/f;->d:Ljava/lang/Long;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fm/openinstall/e/f;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fm/openinstall/e/f;->g:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/fm/openinstall/e/f;->h:Z

    iput-object p1, p0, Lcom/fm/openinstall/e/f;->e:Landroid/content/Context;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/fm/openinstall/e/g;

    invoke-direct {v0, p0}, Lcom/fm/openinstall/e/g;-><init>(Lcom/fm/openinstall/e/f;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/fm/openinstall/e/f;->i:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/fm/openinstall/e/f;->i:Ljava/lang/Thread;

    const-string v0, "StatsCollector-looper"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    new-instance p1, Lcom/fm/openinstall/e/b;

    iget-object v0, p0, Lcom/fm/openinstall/e/f;->e:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/fm/openinstall/e/b;-><init>(Landroid/content/Context;Lcom/fm/openinstall/e/f;)V

    :goto_0
    iput-object p1, p0, Lcom/fm/openinstall/e/f;->j:Lcom/fm/openinstall/e/a;

    return-void

    :cond_0
    new-instance p1, Lcom/fm/openinstall/e/d;

    iget-object v0, p0, Lcom/fm/openinstall/e/f;->e:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/fm/openinstall/e/d;-><init>(Landroid/content/Context;Lcom/fm/openinstall/e/f;)V

    goto :goto_0

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/fm/openinstall/e/f;
    .locals 2

    sget-object v0, Lcom/fm/openinstall/e/f;->a:Lcom/fm/openinstall/e/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/fm/openinstall/e/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fm/openinstall/e/f;->a:Lcom/fm/openinstall/e/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/fm/openinstall/e/f;

    invoke-direct {v1, p0}, Lcom/fm/openinstall/e/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/fm/openinstall/e/f;->a:Lcom/fm/openinstall/e/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/fm/openinstall/e/f;->a:Lcom/fm/openinstall/e/f;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/fm/openinstall/e/h;

    invoke-direct {v0, p0, p1}, Lcom/fm/openinstall/e/h;-><init>(Lcom/fm/openinstall/e/f;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fm/openinstall/e/f;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/fm/openinstall/e/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fm/openinstall/e/f;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/fm/openinstall/e/f;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/fm/openinstall/e/f;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic c(Lcom/fm/openinstall/e/f;)Z
    .locals 0

    invoke-direct {p0}, Lcom/fm/openinstall/e/f;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/fm/openinstall/e/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/fm/openinstall/e/f;->f()V

    return-void
.end method

.method static synthetic e(Lcom/fm/openinstall/e/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/fm/openinstall/e/f;->e:Landroid/content/Context;

    return-object p0
.end method

.method private e()Z
    .locals 11

    iget-object v0, p0, Lcom/fm/openinstall/e/f;->d:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/fm/openinstall/e/f;->e:Landroid/content/Context;

    const-string v4, "FM_last_time"

    const-wide/16 v5, 0x0

    invoke-static {v0, v4, v5, v6}, Lcom/fm/openinstall/f/d;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fm/openinstall/e/f;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    mul-long v4, v4, v9

    sub-long v9, v2, v7

    cmp-long v0, v4, v9

    if-gez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic f(Lcom/fm/openinstall/e/f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fm/openinstall/e/f;->g:Ljava/lang/Object;

    return-object p0
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/fm/openinstall/e/i;

    invoke-direct {v0, p0}, Lcom/fm/openinstall/e/i;-><init>(Lcom/fm/openinstall/e/f;)V

    iget-object v1, p0, Lcom/fm/openinstall/e/f;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fm/openinstall/e/f;->h:Z

    iget-object v0, p0, Lcom/fm/openinstall/e/f;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/fm/openinstall/e/f;->j:Lcom/fm/openinstall/e/a;

    invoke-virtual {v0}, Lcom/fm/openinstall/e/a;->a()V

    return-void
.end method

.method public a(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/fm/openinstall/e/f;->d:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fm/openinstall/e/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fm/openinstall/e/f;->h:Z

    iget-object v0, p0, Lcom/fm/openinstall/e/f;->j:Lcom/fm/openinstall/e/a;

    invoke-virtual {v0}, Lcom/fm/openinstall/e/a;->b()V

    return-void
.end method

.method public b(J)V
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fm/openinstall/e/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/fm/openinstall/e/f;->f()V

    return-void
.end method

.method public c(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fm/openinstall/e/f;->b(J)V

    invoke-virtual {p0}, Lcom/fm/openinstall/e/f;->c()V

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/fm/openinstall/e/f;->e:Landroid/content/Context;

    const-string v1, "AliveLog.txt"

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fm/openinstall/e/f;->e:Landroid/content/Context;

    const-string v1, "FM_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/fm/openinstall/f/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
