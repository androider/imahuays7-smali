.class public Lcom/facebook/cache/common/e;
.super Ljava/lang/Object;
.source "NoOpCacheErrorLogger.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheErrorLogger;


# static fields
.field private static a:Lcom/facebook/cache/common/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/cache/common/e;
    .locals 2

    const-class v0, Lcom/facebook/cache/common/e;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/facebook/cache/common/e;->a:Lcom/facebook/cache/common/e;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/facebook/cache/common/e;

    invoke-direct {v1}, Lcom/facebook/cache/common/e;-><init>()V

    sput-object v1, Lcom/facebook/cache/common/e;->a:Lcom/facebook/cache/common/e;

    .line 25
    :cond_0
    sget-object v1, Lcom/facebook/cache/common/e;->a:Lcom/facebook/cache/common/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method
