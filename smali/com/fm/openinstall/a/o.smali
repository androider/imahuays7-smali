.class public abstract Lcom/fm/openinstall/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/fm/openinstall/f/c;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/fm/openinstall/a/m;

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/a/m;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/fm/openinstall/a/o;

    invoke-static {v0}, Lcom/fm/openinstall/f/c;->a(Ljava/lang/Class;)Lcom/fm/openinstall/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fm/openinstall/a/o;->a:Lcom/fm/openinstall/f/c;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fm/openinstall/a/o;->b:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fm/openinstall/a/o;->c:Ljava/util/concurrent/ExecutorService;

    const-string v0, "OpenInstallRunnable"

    iput-object v0, p0, Lcom/fm/openinstall/a/o;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/fm/openinstall/a/o;->d:Lcom/fm/openinstall/a/m;

    iput-wide p2, p0, Lcom/fm/openinstall/a/o;->e:J

    return-void
.end method

.method static synthetic a(Lcom/fm/openinstall/a/o;)J
    .locals 2

    iget-wide v0, p0, Lcom/fm/openinstall/a/o;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/fm/openinstall/a/o;)Lcom/fm/openinstall/a/m;
    .locals 0

    iget-object p0, p0, Lcom/fm/openinstall/a/o;->d:Lcom/fm/openinstall/a/m;

    return-object p0
.end method


# virtual methods
.method public abstract a(J)Lcom/fm/openinstall/c/b;
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/a/o;->f:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 4

    new-instance v0, Lcom/fm/openinstall/a/p;

    invoke-direct {v0, p0}, Lcom/fm/openinstall/a/p;-><init>(Lcom/fm/openinstall/a/o;)V

    iget-object v1, p0, Lcom/fm/openinstall/a/o;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    iget-wide v1, p0, Lcom/fm/openinstall/a/o;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fm/openinstall/c/b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    new-instance v1, Lcom/fm/openinstall/c/b;

    sget-object v0, Lcom/fm/openinstall/c/c;->c:Lcom/fm/openinstall/c/c;

    const/4 v2, -0x4

    invoke-direct {v1, v0, v2}, Lcom/fm/openinstall/c/b;-><init>(Lcom/fm/openinstall/c/c;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request timeout : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/fm/openinstall/a/o;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fm/openinstall/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    new-instance v1, Lcom/fm/openinstall/c/b;

    sget-object v0, Lcom/fm/openinstall/c/c;->c:Lcom/fm/openinstall/c/c;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Lcom/fm/openinstall/c/b;-><init>(Lcom/fm/openinstall/c/c;I)V

    const-string v0, "unknow error"

    invoke-virtual {v1, v0}, Lcom/fm/openinstall/c/b;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/fm/openinstall/a/o;->b:Landroid/os/Handler;

    new-instance v2, Lcom/fm/openinstall/a/q;

    invoke-direct {v2, p0, v1}, Lcom/fm/openinstall/a/q;-><init>(Lcom/fm/openinstall/a/o;Lcom/fm/openinstall/c/b;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
