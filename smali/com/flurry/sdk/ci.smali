.class public Lcom/flurry/sdk/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "ci"


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/flurry/sdk/ec;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:J

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field private final g:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/ed;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/flurry/sdk/ci;->b:J

    .line 27
    iput-wide v0, p0, Lcom/flurry/sdk/ci;->c:J

    const-wide/16 v2, -0x1

    .line 28
    iput-wide v2, p0, Lcom/flurry/sdk/ci;->d:J

    .line 29
    iput-wide v0, p0, Lcom/flurry/sdk/ci;->e:J

    .line 30
    new-instance v2, Lcom/flurry/sdk/ci$1;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/ci$1;-><init>(Lcom/flurry/sdk/ci;)V

    iput-object v2, p0, Lcom/flurry/sdk/ci;->g:Lcom/flurry/sdk/cw;

    .line 60
    iput-wide v0, p0, Lcom/flurry/sdk/ci;->h:J

    .line 67
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ci;->g:Lcom/flurry/sdk/cw;

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 70
    new-instance v0, Lcom/flurry/sdk/ci$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ci$2;-><init>(Lcom/flurry/sdk/ci;)V

    iput-object v0, p0, Lcom/flurry/sdk/ci;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ci;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/flurry/sdk/ci;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic b(Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/cw;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/flurry/sdk/ci;->g:Lcom/flurry/sdk/cw;

    return-object p0
.end method

.method public static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ee;->a()Lcom/flurry/sdk/ee;

    move-result-object v0

    .line 1477
    iget-wide v0, v0, Lcom/flurry/sdk/ee;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 99
    iget-wide v2, p0, Lcom/flurry/sdk/ci;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long v6, v4, v0

    add-long v0, v2, v6

    iput-wide v0, p0, Lcom/flurry/sdk/ci;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 94
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 143
    :try_start_0
    iput-object p1, p0, Lcom/flurry/sdk/ci;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 142
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ci;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 154
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 151
    :try_start_0
    iput-object p1, p0, Lcom/flurry/sdk/ci;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 150
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()J
    .locals 6

    monitor-enter p0

    .line 132
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/ci;->c:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    .line 133
    iget-wide v0, p0, Lcom/flurry/sdk/ci;->h:J

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/flurry/sdk/ci;->h:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/flurry/sdk/ci;->h:J

    :goto_0
    iput-wide v4, p0, Lcom/flurry/sdk/ci;->h:J

    .line 135
    iget-wide v0, p0, Lcom/flurry/sdk/ci;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 131
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ci;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ci;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ci;->k:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
