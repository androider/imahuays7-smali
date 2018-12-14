.class public Lcom/flurry/sdk/az;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "az"

.field public static b:I

.field public static c:I

.field public static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field static e:Lcom/flurry/sdk/cu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cu<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ba;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Lcom/flurry/sdk/az;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/flurry/sdk/ba;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:J

.field private j:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/by;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/flurry/sdk/az$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/az$1;-><init>(Lcom/flurry/sdk/az;)V

    iput-object v0, p0, Lcom/flurry/sdk/az;->j:Lcom/flurry/sdk/cw;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/az;->g:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/az;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/az;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    sget v0, Lcom/flurry/sdk/az;->c:I

    if-nez v0, :cond_0

    const v0, 0x927c0

    .line 71
    sput v0, Lcom/flurry/sdk/az;->c:I

    .line 74
    :cond_0
    sget v0, Lcom/flurry/sdk/az;->b:I

    if-nez v0, :cond_1

    const/16 v0, 0xf

    .line 75
    sput v0, Lcom/flurry/sdk/az;->b:I

    .line 1089
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 1103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    .line 1090
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timeToSendNextPulseReport"

    const-wide/16 v2, 0x0

    .line 1092
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/az;->i:J

    .line 80
    sget-object v0, Lcom/flurry/sdk/az;->e:Lcom/flurry/sdk/cu;

    if-nez v0, :cond_2

    .line 81
    invoke-static {}, Lcom/flurry/sdk/az;->g()V

    .line 84
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/az;->j:Lcom/flurry/sdk/cw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    return-void
.end method

.method public static a()V
    .locals 3

    .line 110
    sget-object v0, Lcom/flurry/sdk/az;->f:Lcom/flurry/sdk/az;

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    sget-object v2, Lcom/flurry/sdk/az;->f:Lcom/flurry/sdk/az;

    iget-object v2, v2, Lcom/flurry/sdk/az;->j:Lcom/flurry/sdk/cw;

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 113
    sget-object v0, Lcom/flurry/sdk/az;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 114
    sput-object v0, Lcom/flurry/sdk/az;->g:Ljava/util/Map;

    .line 115
    sput-object v0, Lcom/flurry/sdk/az;->f:Lcom/flurry/sdk/az;

    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 120
    sput p0, Lcom/flurry/sdk/az;->b:I

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/az;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/flurry/sdk/az;->h()V

    return-void
.end method

.method public static b(I)V
    .locals 0

    .line 124
    sput p0, Lcom/flurry/sdk/az;->c:I

    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ba;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/flurry/sdk/az;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private declared-synchronized c(I)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    .line 415
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing report "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from PulseCallbackManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/flurry/sdk/az;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 414
    monitor-exit p0

    throw p1
.end method

.method private c(Lcom/flurry/sdk/ax;)V
    .locals 3

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p1, Lcom/flurry/sdk/ax;->d:Z

    .line 252
    invoke-virtual {p1}, Lcom/flurry/sdk/ax;->a()V

    .line 255
    sget-object v0, Lcom/flurry/sdk/az;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 11086
    iget-object v0, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    invoke-virtual {v0}, Lcom/flurry/sdk/aw;->b()V

    .line 260
    sget-object v0, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12070
    iget-object v2, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 12138
    iget-object v2, v2, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 13097
    iget-object v2, v2, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14074
    iget-object p1, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 14122
    iget-object p1, p1, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    .line 261
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " finalized."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    .line 260
    invoke-static {v1, v0, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/flurry/sdk/az;->b()V

    .line 266
    invoke-direct {p0}, Lcom/flurry/sdk/az;->j()V

    return-void
.end method

.method public static declared-synchronized d()Lcom/flurry/sdk/az;
    .locals 2

    const-class v0, Lcom/flurry/sdk/az;

    monitor-enter v0

    .line 301
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/az;->f:Lcom/flurry/sdk/az;

    if-nez v1, :cond_0

    .line 302
    new-instance v1, Lcom/flurry/sdk/az;

    invoke-direct {v1}, Lcom/flurry/sdk/az;-><init>()V

    sput-object v1, Lcom/flurry/sdk/az;->f:Lcom/flurry/sdk/az;

    .line 305
    :cond_0
    sget-object v1, Lcom/flurry/sdk/az;->f:Lcom/flurry/sdk/az;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 300
    monitor-exit v0

    throw v1
.end method

.method public static e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ba;",
            ">;"
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/flurry/sdk/az;->e:Lcom/flurry/sdk/cu;

    if-nez v0, :cond_0

    .line 503
    invoke-static {}, Lcom/flurry/sdk/az;->g()V

    .line 506
    :cond_0
    sget-object v0, Lcom/flurry/sdk/az;->e:Lcom/flurry/sdk/cu;

    invoke-virtual {v0}, Lcom/flurry/sdk/cu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .line 30
    invoke-static {}, Lcom/flurry/sdk/az;->g()V

    return-void
.end method

.method private static g()V
    .locals 5

    .line 96
    new-instance v0, Lcom/flurry/sdk/cu;

    .line 97
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 2103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v2, ".yflurryanongoingpulsecallbackreporter"

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryanongoingpulsecallbackreporter"

    new-instance v3, Lcom/flurry/sdk/az$2;

    invoke-direct {v3}, Lcom/flurry/sdk/az$2;-><init>()V

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    sput-object v0, Lcom/flurry/sdk/az;->e:Lcom/flurry/sdk/cu;

    return-void
.end method

.method private h()V
    .locals 4

    .line 163
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 5103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "timeToSendNextPulseReport"

    .line 168
    iget-wide v2, p0, Lcom/flurry/sdk/az;->i:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private declared-synchronized i()I
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/az;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 3

    .line 287
    invoke-static {}, Lcom/flurry/sdk/az;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/az;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    .line 288
    sget-object v1, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    const-string v2, "Threshold reached. Sending callback logging reports"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/flurry/sdk/az;->m()V

    :cond_1
    return-void
.end method

.method private static k()Z
    .locals 2

    .line 309
    sget-object v0, Lcom/flurry/sdk/az;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    sget v1, Lcom/flurry/sdk/az;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private l()Z
    .locals 5

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/az;->i:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private m()V
    .locals 9

    .line 322
    invoke-static {}, Lcom/flurry/sdk/az;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ba;

    .line 326
    invoke-virtual {v1}, Lcom/flurry/sdk/ba;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/aw;

    .line 327
    iget-object v4, v4, Lcom/flurry/sdk/aw;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    .line 328
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 329
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/ax;

    .line 332
    iget-boolean v7, v6, Lcom/flurry/sdk/ax;->j:Z

    if-eqz v7, :cond_3

    .line 333
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 338
    :cond_3
    iget-object v7, v6, Lcom/flurry/sdk/ax;->f:Lcom/flurry/sdk/ay;

    sget-object v8, Lcom/flurry/sdk/ay;->d:Lcom/flurry/sdk/ay;

    .line 339
    invoke-virtual {v7, v8}, Lcom/flurry/sdk/ay;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 347
    iput-boolean v5, v6, Lcom/flurry/sdk/ax;->j:Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    .line 352
    invoke-static {}, Lcom/flurry/sdk/bb;->a()Lcom/flurry/sdk/bb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/bb;->a(Lcom/flurry/sdk/ba;)V

    goto :goto_0

    .line 357
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/bb;->a()Lcom/flurry/sdk/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bb;->b()V

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v3, Lcom/flurry/sdk/az;->c:I

    int-to-long v3, v3

    add-long v5, v0, v3

    iput-wide v5, p0, Lcom/flurry/sdk/az;->i:J

    .line 361
    invoke-direct {p0}, Lcom/flurry/sdk/az;->h()V

    .line 14377
    invoke-static {}, Lcom/flurry/sdk/az;->c()Ljava/util/List;

    move-result-object v0

    .line 14380
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ba;

    .line 14384
    invoke-virtual {v1}, Lcom/flurry/sdk/ba;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 15074
    iget v1, v1, Lcom/flurry/sdk/ba;->c:I

    .line 14385
    invoke-direct {p0, v1}, Lcom/flurry/sdk/az;->c(I)V

    goto :goto_2

    .line 14389
    :cond_7
    invoke-virtual {v1}, Lcom/flurry/sdk/ba;->a()Ljava/util/List;

    move-result-object v3

    .line 14392
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/aw;

    .line 15146
    iget-boolean v5, v4, Lcom/flurry/sdk/aw;->m:Z

    if-eqz v5, :cond_9

    .line 16114
    iget-object v5, v1, Lcom/flurry/sdk/ba;->e:Ljava/util/Map;

    .line 17098
    iget-wide v6, v4, Lcom/flurry/sdk/aw;->a:J

    .line 14396
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 14401
    :cond_9
    iget-object v4, v4, Lcom/flurry/sdk/aw;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 14402
    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 14403
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/ax;

    .line 14405
    iget-boolean v5, v5, Lcom/flurry/sdk/ax;->j:Z

    if-eqz v5, :cond_a

    .line 14406
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 367
    :cond_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/az;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 369
    invoke-virtual {p0}, Lcom/flurry/sdk/az;->b()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/ax;)V
    .locals 3

    monitor-enter p0

    .line 224
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8070
    iget-object v2, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 8138
    iget-object v2, v2, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 9097
    iget-object v2, v2, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report sent successfully to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10074
    iget-object v2, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 10122
    iget-object v2, v2, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 224
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/flurry/sdk/ay;->a:Lcom/flurry/sdk/ay;

    iput-object v0, p1, Lcom/flurry/sdk/ax;->f:Lcom/flurry/sdk/ay;

    const-string v0, ""

    .line 230
    iput-object v0, p1, Lcom/flurry/sdk/ax;->g:Ljava/lang/String;

    .line 232
    invoke-direct {p0, p1}, Lcom/flurry/sdk/az;->c(Lcom/flurry/sdk/ax;)V

    .line 235
    invoke-static {}, Lcom/flurry/sdk/dc;->c()I

    move-result v0

    if-gt v0, v2, :cond_0

    invoke-static {}, Lcom/flurry/sdk/dc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/az$5;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/az$5;-><init>(Lcom/flurry/sdk/az;Lcom/flurry/sdk/ax;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 223
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/ba;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 130
    :try_start_0
    sget-object p1, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    const-string v1, "Must add valid PulseCallbackAsyncReportInfo"

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 134
    :cond_0
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding and sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3097
    iget-object v3, p1, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " report to PulseCallbackManager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/flurry/sdk/ba;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-wide v0, p0, Lcom/flurry/sdk/az;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/flurry/sdk/az;->c:I

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/flurry/sdk/az;->i:J

    .line 142
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/az$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/az$3;-><init>(Lcom/flurry/sdk/az;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/az;->i()I

    move-result v0

    .line 4078
    iput v0, p1, Lcom/flurry/sdk/ba;->c:I

    .line 152
    sget-object v1, Lcom/flurry/sdk/az;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p1}, Lcom/flurry/sdk/ba;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/aw;

    .line 155
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    .line 4152
    iget-object v1, v1, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/av;

    .line 156
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/av;->b(Lcom/flurry/sdk/dn;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :cond_2
    monitor-exit p0

    return-void

    .line 128
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/ax;Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    .line 421
    :try_start_0
    iget v0, p1, Lcom/flurry/sdk/ax;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/flurry/sdk/ax;->h:I

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/flurry/sdk/ax;->i:J

    .line 18055
    iget-object v0, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    iget v2, p1, Lcom/flurry/sdk/ax;->h:I

    .line 18093
    iget v0, v0, Lcom/flurry/sdk/aw;->c:I

    const/4 v3, 0x0

    if-le v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-nez v0, :cond_2

    .line 424
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 437
    :cond_1
    sget-object v0, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22074
    iget-object v4, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 22122
    iget-object v4, v4, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    .line 438
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " redirecting to url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 23082
    iget-object p1, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 24060
    iput-object p2, p1, Lcom/flurry/sdk/dn;->r:Ljava/lang/String;

    .line 442
    invoke-virtual {p0}, Lcom/flurry/sdk/az;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return v1

    .line 425
    :cond_2
    :goto_1
    :try_start_1
    sget-object p2, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum number of redirects attempted. Aborting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19070
    iget-object v1, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 19138
    iget-object v1, v1, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 20097
    iget-object v1, v1, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " report to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21074
    iget-object v1, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 21122
    iget-object v1, v1, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v2, p2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object p2, Lcom/flurry/sdk/ay;->c:Lcom/flurry/sdk/ay;

    iput-object p2, p1, Lcom/flurry/sdk/ax;->f:Lcom/flurry/sdk/ay;

    const-string p2, ""

    .line 431
    iput-object p2, p1, Lcom/flurry/sdk/ax;->g:Ljava/lang/String;

    .line 433
    invoke-direct {p0, p1}, Lcom/flurry/sdk/az;->c(Lcom/flurry/sdk/ax;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    .line 420
    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 270
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/az$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/az$6;-><init>(Lcom/flurry/sdk/az;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/ax;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    .line 449
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Maximum number of attempts reached. Aborting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24070
    iget-object v3, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 24138
    iget-object v3, v3, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 25097
    iget-object v3, v3, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 450
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/ay;

    iput-object v0, p1, Lcom/flurry/sdk/ax;->f:Lcom/flurry/sdk/ay;

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/flurry/sdk/ax;->i:J

    const-string v0, ""

    .line 454
    iput-object v0, p1, Lcom/flurry/sdk/ax;->g:Ljava/lang/String;

    .line 457
    invoke-direct {p0, p1}, Lcom/flurry/sdk/az;->c(Lcom/flurry/sdk/ax;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 448
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/ba;)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 180
    :try_start_0
    sget-object p1, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    const-string v1, "Must add valid PulseCallbackAsyncReportInfo"

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 184
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/flurry/sdk/az;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Lcom/flurry/sdk/az;->c:I

    int-to-long v3, v3

    add-long v5, v1, v3

    iput-wide v5, p0, Lcom/flurry/sdk/az;->i:J

    .line 187
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/az$4;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/az$4;-><init>(Lcom/flurry/sdk/az;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/az;->i()I

    move-result v1

    .line 6078
    iput v1, p1, Lcom/flurry/sdk/ba;->c:I

    .line 198
    sget-object v2, Lcom/flurry/sdk/az;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p1}, Lcom/flurry/sdk/ba;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/aw;

    .line 202
    iget-object v2, v2, Lcom/flurry/sdk/aw;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    sget-object v3, Lcom/flurry/sdk/az;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6512
    invoke-static {}, Lcom/flurry/sdk/az;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6513
    sget-object v3, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    const-string v4, "Max Callback Attempts threshold reached. Sending callback logging reports"

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6515
    invoke-direct {p0}, Lcom/flurry/sdk/az;->m()V

    goto :goto_0

    .line 6520
    :cond_4
    invoke-direct {p0}, Lcom/flurry/sdk/az;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6521
    sget-object v1, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    const-string v2, "Time threshold reached. Sending callback logging reports"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6522
    invoke-direct {p0}, Lcom/flurry/sdk/az;->m()V

    .line 211
    :cond_5
    sget-object v1, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Restoring "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7097
    iget-object p1, p1, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 212
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " report to PulseCallbackManager. Number of stored completed callbacks: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/flurry/sdk/az;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 214
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 178
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/ax;Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 465
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ay;->c:Lcom/flurry/sdk/ay;

    iput-object v0, p1, Lcom/flurry/sdk/ax;->f:Lcom/flurry/sdk/ay;

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/flurry/sdk/ax;->i:J

    if-nez p2, :cond_0

    const-string p2, ""

    .line 468
    :cond_0
    iput-object p2, p1, Lcom/flurry/sdk/ax;->g:Ljava/lang/String;

    .line 26051
    iget-object p2, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 27032
    iget v0, p2, Lcom/flurry/sdk/dn;->p:I

    .line 26089
    iget p2, p2, Lcom/flurry/sdk/aw;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x3

    if-eqz p2, :cond_2

    .line 472
    sget-object p2, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Maximum number of attempts reached. Aborting: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27070
    iget-object v3, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 27138
    iget-object v3, v3, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 28097
    iget-object v3, v3, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 473
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " report to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29074
    iget-object v3, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 29122
    iget-object v3, v3, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    .line 474
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v0, p2, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-direct {p0, p1}, Lcom/flurry/sdk/az;->c(Lcom/flurry/sdk/ax;)V

    goto :goto_1

    .line 30078
    :cond_2
    iget-object p2, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 31056
    iget-object p2, p2, Lcom/flurry/sdk/dn;->r:Ljava/lang/String;

    .line 479
    invoke-static {p2}, Lcom/flurry/sdk/es;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 480
    sget-object p2, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Url: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31078
    iget-object v3, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 32056
    iget-object v3, v3, Lcom/flurry/sdk/dn;->r:Ljava/lang/String;

    .line 480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is invalid."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, p1}, Lcom/flurry/sdk/az;->c(Lcom/flurry/sdk/ax;)V

    goto :goto_1

    .line 486
    :cond_3
    sget-object p2, Lcom/flurry/sdk/az;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying callback to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32070
    iget-object v3, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 32138
    iget-object v3, v3, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 33097
    iget-object v3, v3, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 33114
    iget-wide v3, v3, Lcom/flurry/sdk/aw;->h:J

    const-wide/16 v5, 0x3e8

    .line 487
    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-static {v0, p2, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Lcom/flurry/sdk/ax;->a()V

    .line 493
    sget-object p1, Lcom/flurry/sdk/az;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 494
    invoke-virtual {p0}, Lcom/flurry/sdk/az;->b()V

    .line 495
    invoke-direct {p0}, Lcom/flurry/sdk/az;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    .line 498
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 464
    monitor-exit p0

    throw p1
.end method
