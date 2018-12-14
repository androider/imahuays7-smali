.class public final Lcom/flurry/sdk/ex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ex$a;
    }
.end annotation


# static fields
.field private static c:Lcom/flurry/sdk/ex;


# instance fields
.field final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ex;->b:Ljava/util/Map;

    .line 19
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ex;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 20
    new-instance v0, Lcom/flurry/sdk/ex$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/ex$a;-><init>(Lcom/flurry/sdk/ex;B)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ex;
    .locals 2

    const-class v0, Lcom/flurry/sdk/ex;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ex;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/flurry/sdk/ex;

    invoke-direct {v1}, Lcom/flurry/sdk/ex;-><init>()V

    sput-object v1, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ex;

    .line 28
    :cond_0
    sget-object v1, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/ex;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ex;

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ex;

    .line 1043
    iget-object v1, v1, Lcom/flurry/sdk/ex;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    const/4 v1, 0x0

    .line 39
    sput-object v1, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method final c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/ex;->b:Ljava/util/Map;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/ex;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
