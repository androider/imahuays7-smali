.class public final Lcom/google/android/exoplayer2/upstream/cache/n;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache;


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# instance fields
.field private final c:Ljava/io/File;

.field private final d:Lcom/google/android/exoplayer2/upstream/cache/d;

.field private final e:Lcom/google/android/exoplayer2/upstream/cache/h;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/n;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/d;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/n;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/d;[BZ)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/d;Lcom/google/android/exoplayer2/upstream/cache/h;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->c(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Another SimpleCache instance uses the folder: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Ljava/io/File;

    .line 128
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/d;

    .line 129
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    .line 130
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->f:Ljava/util/HashMap;

    .line 133
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 134
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/n$1;

    const-string p3, "SimpleCache.initialize()"

    invoke-direct {p2, p0, p3, p1}, Lcom/google/android/exoplayer2/upstream/cache/n$1;-><init>(Lcom/google/android/exoplayer2/upstream/cache/n;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 143
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/n$1;->start()V

    .line 144
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/d;[BZ)V
    .locals 1

    .line 111
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/h;-><init>(Ljava/io/File;[BZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/n;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/d;Lcom/google/android/exoplayer2/upstream/cache/h;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/cache/e;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/h;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(Lcom/google/android/exoplayer2/upstream/cache/e;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 432
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->g:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/cache/e;->c:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->g:J

    if-eqz p2, :cond_1

    .line 435
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/cache/g;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/h;->d(Ljava/lang/String;)V

    .line 436
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 439
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->c(Lcom/google/android/exoplayer2/upstream/cache/e;)V

    throw p2

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->c(Lcom/google/android/exoplayer2/upstream/cache/e;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/cache/n;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->d()V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/cache/o;)V
    .locals 6

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/h;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(Lcom/google/android/exoplayer2/upstream/cache/o;)V

    .line 423
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->g:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->g:J

    .line 424
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->b(Lcom/google/android/exoplayer2/upstream/cache/o;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/cache/o;Lcom/google/android/exoplayer2/upstream/cache/e;)V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 488
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;Lcom/google/android/exoplayer2/upstream/cache/e;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/d;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/d;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;Lcom/google/android/exoplayer2/upstream/cache/e;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/upstream/cache/n;)Lcom/google/android/exoplayer2/upstream/cache/d;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/d;

    return-object p0
.end method

.method private b(Lcom/google/android/exoplayer2/upstream/cache/o;)V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 478
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/d;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/d;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;)V

    return-void
.end method

.method public static declared-synchronized b(Ljava/io/File;)Z
    .locals 2

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/n;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/n;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private c(Lcom/google/android/exoplayer2/upstream/cache/e;)V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 468
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->b(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/d;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/d;->b(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;)V

    return-void
.end method

.method private static declared-synchronized c(Ljava/io/File;)Z
    .locals 2

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/n;

    monitor-enter v0

    .line 495
    :try_start_0
    sget-boolean v1, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 496
    monitor-exit v0

    return p0

    .line 498
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/n;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 494
    monitor-exit v0

    throw p0
.end method

.method private d()V
    .locals 9

    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/h;->a()V

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 395
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 396
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cached_content_index.exi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 400
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/o;->a(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/h;)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 402
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Lcom/google/android/exoplayer2/upstream/cache/o;)V

    goto :goto_2

    .line 404
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/h;->d()V

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/h;->b()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "SimpleCache"

    const-string v2, "Storing index file failed"

    .line 412
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private static declared-synchronized d(Ljava/io/File;)V
    .locals 2

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/n;

    monitor-enter v0

    .line 502
    :try_start_0
    sget-boolean v1, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Z

    if-nez v1, :cond_0

    .line 503
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/n;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 501
    monitor-exit v0

    throw p0
.end method

.method private e()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/h;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/g;

    .line 450
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/g;->c()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/e;

    .line 451
    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/cache/e;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 452
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 456
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 458
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-direct {p0, v3, v1}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Lcom/google/android/exoplayer2/upstream/cache/e;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/h;->d()V

    .line 461
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/h;->b()V

    return-void
.end method

.method private f(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/o;->b(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p1

    return-object p1

    .line 371
    :cond_0
    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(J)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p1

    .line 372
    iget-boolean v1, p1, Lcom/google/android/exoplayer2/upstream/cache/o;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/o;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->e()V

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/n;->d(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 254
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object v0

    .line 256
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/g;->b()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 258
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 261
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->e()V

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/d;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/d;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V

    .line 264
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Ljava/io/File;

    iget v3, v0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:I

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v4, p2

    .line 264
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/o;->a(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 253
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/e;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    .line 194
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->c()Ljava/util/TreeSet;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 192
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 149
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 150
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    .line 154
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/n;->d(Ljava/io/File;)V

    .line 157
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 156
    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/cache/n;->d(Ljava/io/File;)V

    .line 157
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 148
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/exoplayer2/upstream/cache/e;)V
    .locals 1

    monitor-enter p0

    .line 297
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object p1

    .line 299
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(Z)V

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->d(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 296
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 270
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/o;->a(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/h;)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 272
    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 273
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/cache/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/h;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object v3

    .line 274
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/cache/g;->b()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 277
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 278
    monitor-exit p0

    return-void

    .line 281
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 286
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/cache/g;->a()Lcom/google/android/exoplayer2/upstream/cache/i;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Lcom/google/android/exoplayer2/upstream/cache/i;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    .line 288
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/cache/o;->b:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    const/4 p1, 0x0

    add-long v9, v5, v7

    cmp-long p1, v9, v3

    if-gtz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 290
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Lcom/google/android/exoplayer2/upstream/cache/o;)V

    .line 291
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->b()V

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 269
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/h;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/k;)V

    .line 343
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 340
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    .line 335
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/i;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Lcom/google/android/exoplayer2/upstream/cache/i;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;JJ)J
    .locals 1

    monitor-enter p0

    .line 321
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    neg-long p1, p4

    :goto_0
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 320
    monitor-exit p0

    throw p1
.end method

.method public synthetic b(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/n;->e(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 200
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/h;->e()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 198
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/android/exoplayer2/upstream/cache/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 308
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 309
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Lcom/google/android/exoplayer2/upstream/cache/e;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 307
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()J
    .locals 2

    monitor-enter p0

    .line 205
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 206
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 204
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/i;
    .locals 1

    monitor-enter p0

    .line 348
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->e(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/i;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 347
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 328
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/k;-><init>()V

    .line 329
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Lcom/google/android/exoplayer2/upstream/cache/k;J)V

    .line 330
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 327
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/n;->e(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 215
    monitor-exit p0

    return-object v0

    .line 221
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 212
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 229
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 230
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/n;->f(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p2

    .line 233
    iget-boolean p3, p2, Lcom/google/android/exoplayer2/upstream/cache/o;->d:Z

    if-eqz p3, :cond_0

    .line 235
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/g;->b(Lcom/google/android/exoplayer2/upstream/cache/o;)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p1

    .line 236
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Lcom/google/android/exoplayer2/upstream/cache/o;Lcom/google/android/exoplayer2/upstream/cache/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-object p1

    .line 240
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->b()Z

    move-result p3

    if-nez p3, :cond_1

    .line 243
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    monitor-exit p0

    return-object p2

    :cond_1
    const/4 p1, 0x0

    .line 248
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 228
    monitor-exit p0

    throw p1
.end method
