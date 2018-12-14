.class public Lcom/facebook/imagepipeline/c/e;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/cache/a/i;

.field private final c:Lcom/facebook/common/memory/g;

.field private final d:Lcom/facebook/common/memory/j;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lcom/facebook/imagepipeline/c/u;

.field private final h:Lcom/facebook/imagepipeline/c/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/facebook/imagepipeline/c/e;

    sput-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/a/i;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/n;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/cache/a/i;

    .line 54
    iput-object p2, p0, Lcom/facebook/imagepipeline/c/e;->c:Lcom/facebook/common/memory/g;

    .line 55
    iput-object p3, p0, Lcom/facebook/imagepipeline/c/e;->d:Lcom/facebook/common/memory/j;

    .line 56
    iput-object p4, p0, Lcom/facebook/imagepipeline/c/e;->e:Ljava/util/concurrent/Executor;

    .line 57
    iput-object p5, p0, Lcom/facebook/imagepipeline/c/e;->f:Ljava/util/concurrent/Executor;

    .line 58
    iput-object p6, p0, Lcom/facebook/imagepipeline/c/e;->h:Lcom/facebook/imagepipeline/c/n;

    .line 59
    invoke-static {}, Lcom/facebook/imagepipeline/c/u;->a()Lcom/facebook/imagepipeline/c/u;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/u;

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/b;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/e;->b(Lcom/facebook/cache/common/b;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/u;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/u;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .line 35
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/c/e;->c(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)V

    return-void
.end method

.method private b(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)Lbolts/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/e;",
            ")",
            "Lbolts/g<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "Found image for %s in staging area"

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->h:Lcom/facebook/imagepipeline/c/n;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/c/n;->c(Lcom/facebook/cache/common/b;)V

    .line 350
    invoke-static {p2}, Lbolts/g;->a(Ljava/lang/Object;)Lbolts/g;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/facebook/cache/common/b;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/b;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/g<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation

    .line 173
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/c/e$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/imagepipeline/c/e$1;-><init>(Lcom/facebook/imagepipeline/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/b;)V

    iget-object p2, p0, Lcom/facebook/imagepipeline/c/e;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, p2}, Lbolts/g;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/g;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 225
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "Failed to schedule disk-cache read for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 229
    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 225
    invoke-static {v0, p2, v1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-static {p2}, Lbolts/g;->a(Ljava/lang/Exception;)Lbolts/g;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/facebook/cache/common/b;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "Disk cache read for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/cache/a/i;

    invoke-interface {v0, p1}, Lcom/facebook/cache/a/i;->a(Lcom/facebook/cache/common/b;)Lcom/facebook/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "Disk cache miss for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->h:Lcom/facebook/imagepipeline/c/n;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/n;->f()V

    const/4 p1, 0x0

    return-object p1

    .line 366
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Found entry in disk cache for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->h:Lcom/facebook/imagepipeline/c/n;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/c/n;->d(Lcom/facebook/cache/common/b;)V

    .line 371
    invoke-interface {v0}, Lcom/facebook/a/a;->a()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/c/e;->c:Lcom/facebook/common/memory/g;

    invoke-interface {v0}, Lcom/facebook/a/a;->b()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v2, v1, v0}, Lcom/facebook/common/memory/g;->a(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 378
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Successful read from disk cache for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 375
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 376
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 384
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Exception reading from cache for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object p1, p0, Lcom/facebook/imagepipeline/c/e;->h:Lcom/facebook/imagepipeline/c/n;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/c/n;->g()V

    .line 386
    throw v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/n;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/facebook/imagepipeline/c/e;->h:Lcom/facebook/imagepipeline/c/n;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/cache/a/i;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/cache/a/i;

    return-object p0
.end method

.method private c(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)V
    .locals 4

    .line 397
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "About to write to disk-cache for key %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/cache/a/i;

    new-instance v1, Lcom/facebook/imagepipeline/c/e$4;

    invoke-direct {v1, p0, p2}, Lcom/facebook/imagepipeline/c/e$4;-><init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/g/e;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/cache/a/i;->a(Lcom/facebook/cache/common/b;Lcom/facebook/cache/common/h;)Lcom/facebook/a/a;

    .line 407
    sget-object p2, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v0, "Successful disk-cache write for key %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 411
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "Failed to write to disk-cache for key %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/common/memory/j;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/facebook/imagepipeline/c/e;->d:Lcom/facebook/common/memory/j;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/cache/common/b;)Lbolts/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/b;",
            ")",
            "Lbolts/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 293
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/u;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/u;->a(Lcom/facebook/cache/common/b;)Z

    .line 296
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/c/e$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/c/e$3;-><init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/b;)V

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->f:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lbolts/g;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/g;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 318
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Failed to schedule disk-cache remove for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-static {v0}, Lbolts/g;->a(Ljava/lang/Exception;)Lbolts/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/facebook/cache/common/b;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/b;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/g<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation

    .line 132
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#get"

    .line 133
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/u;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/u;->b(Lcom/facebook/cache/common/b;)Lcom/facebook/imagepipeline/g/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/c/e;->b(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)Lbolts/g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 142
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_1
    return-object p1

    .line 139
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/c/e;->b(Lcom/facebook/cache/common/b;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/g;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 142
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 141
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 142
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    .line 144
    :cond_4
    throw p1
.end method

.method public a(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)V
    .locals 7

    .line 242
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#put"

    .line 243
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 245
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {p2}, Lcom/facebook/imagepipeline/g/e;->e(Lcom/facebook/imagepipeline/g/e;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 249
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/u;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/c/u;->a(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)V

    .line 254
    invoke-static {p2}, Lcom/facebook/imagepipeline/g/e;->a(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/imagepipeline/g/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :try_start_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/facebook/imagepipeline/c/e$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/facebook/imagepipeline/c/e$2;-><init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 278
    :try_start_2
    sget-object v2, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v3, "Failed to schedule disk-cache write for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/u;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/c/u;->b(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)Z

    .line 280
    invoke-static {v0}, Lcom/facebook/imagepipeline/g/e;->d(Lcom/facebook/imagepipeline/g/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 284
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 283
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 284
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    .line 286
    :cond_2
    throw p1
.end method
