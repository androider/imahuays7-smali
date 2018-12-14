.class public final Lcom/yanzhenjie/andserver/f/c;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field private static a:Lcom/yanzhenjie/andserver/f/c;

.field private static c:Landroid/os/Handler;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/f/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/yanzhenjie/andserver/f/c;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/yanzhenjie/andserver/f/c;
    .locals 2

    .line 41
    sget-object v0, Lcom/yanzhenjie/andserver/f/c;->a:Lcom/yanzhenjie/andserver/f/c;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/yanzhenjie/andserver/f/c;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/yanzhenjie/andserver/f/c;->a:Lcom/yanzhenjie/andserver/f/c;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/yanzhenjie/andserver/f/c;

    invoke-direct {v1}, Lcom/yanzhenjie/andserver/f/c;-><init>()V

    sput-object v1, Lcom/yanzhenjie/andserver/f/c;->a:Lcom/yanzhenjie/andserver/f/c;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/yanzhenjie/andserver/f/c;->a:Lcom/yanzhenjie/andserver/f/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yanzhenjie/andserver/f/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/yanzhenjie/andserver/f/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    .line 96
    sget-object v0, Lcom/yanzhenjie/andserver/f/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
