.class public Lcom/facebook/imagepipeline/d/j;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/facebook/imagepipeline/d/j;


# instance fields
.field private final c:Lcom/facebook/imagepipeline/k/at;

.field private final d:Lcom/facebook/imagepipeline/d/h;

.field private e:Lcom/facebook/imagepipeline/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/imagepipeline/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/o<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/imagepipeline/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/imagepipeline/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/o<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/facebook/imagepipeline/c/e;

.field private j:Lcom/facebook/cache/a/i;

.field private k:Lcom/facebook/imagepipeline/decoder/b;

.field private l:Lcom/facebook/imagepipeline/d/g;

.field private m:Lcom/facebook/imagepipeline/m/c;

.field private n:Lcom/facebook/imagepipeline/d/l;

.field private o:Lcom/facebook/imagepipeline/d/m;

.field private p:Lcom/facebook/imagepipeline/c/e;

.field private q:Lcom/facebook/cache/a/i;

.field private r:Lcom/facebook/imagepipeline/b/f;

.field private s:Lcom/facebook/imagepipeline/i/f;

.field private t:Lcom/facebook/imagepipeline/animated/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/facebook/imagepipeline/d/j;

    sput-object v0, Lcom/facebook/imagepipeline/d/j;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/d/h;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipelineConfig()"

    .line 148
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/d/h;

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 151
    new-instance v0, Lcom/facebook/imagepipeline/k/at;

    .line 153
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/h;->k()Lcom/facebook/imagepipeline/d/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/d/e;->e()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/k/at;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->c:Lcom/facebook/imagepipeline/k/at;

    .line 154
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_1
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/ac;Lcom/facebook/imagepipeline/i/f;)Lcom/facebook/imagepipeline/b/f;
    .locals 2

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 306
    new-instance p1, Lcom/facebook/imagepipeline/b/a;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->a()Lcom/facebook/imagepipeline/memory/c;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/b/a;-><init>(Lcom/facebook/imagepipeline/memory/c;)V

    return-object p1

    .line 307
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 308
    new-instance v0, Lcom/facebook/imagepipeline/b/e;

    new-instance v1, Lcom/facebook/imagepipeline/b/b;

    .line 309
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->f()Lcom/facebook/common/memory/g;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/b/b;-><init>(Lcom/facebook/common/memory/g;)V

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/b/e;-><init>(Lcom/facebook/imagepipeline/b/b;Lcom/facebook/imagepipeline/i/f;)V

    return-object v0

    .line 311
    :cond_1
    new-instance p0, Lcom/facebook/imagepipeline/b/c;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/b/c;-><init>()V

    return-object p0
.end method

.method public static a()Lcom/facebook/imagepipeline/d/j;
    .locals 2

    .line 76
    sget-object v0, Lcom/facebook/imagepipeline/d/j;->b:Lcom/facebook/imagepipeline/d/j;

    const-string v1, "ImagePipelineFactory was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/d/j;

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/ac;Z)Lcom/facebook/imagepipeline/i/f;
    .locals 2

    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->d()I

    move-result p1

    .line 336
    new-instance v0, Lcom/facebook/imagepipeline/i/e;

    .line 337
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->a()Lcom/facebook/imagepipeline/memory/c;

    move-result-object p0

    new-instance v1, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v1, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/imagepipeline/i/e;-><init>(Lcom/facebook/imagepipeline/memory/c;ILandroid/support/v4/util/Pools$SynchronizedPool;)V

    return-object v0

    .line 338
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->d()I

    move-result p1

    .line 340
    new-instance v0, Lcom/facebook/imagepipeline/i/a;

    .line 341
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->a()Lcom/facebook/imagepipeline/memory/c;

    move-result-object p0

    new-instance v1, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v1, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/imagepipeline/i/a;-><init>(Lcom/facebook/imagepipeline/memory/c;ILandroid/support/v4/util/Pools$SynchronizedPool;)V

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    .line 345
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_2

    .line 347
    new-instance p0, Lcom/facebook/imagepipeline/i/c;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/i/c;-><init>()V

    return-object p0

    .line 349
    :cond_2
    new-instance p1, Lcom/facebook/imagepipeline/i/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ac;->c()Lcom/facebook/imagepipeline/memory/o;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/i/d;-><init>(Lcom/facebook/imagepipeline/memory/o;)V

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/d/j;

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImagePipelineFactory#initialize"

    .line 92
    invoke-static {v1}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/d/h;->a(Landroid/content/Context;)Lcom/facebook/imagepipeline/d/h$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/h$a;->a()Lcom/facebook/imagepipeline/d/h;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/d/j;->a(Lcom/facebook/imagepipeline/d/h;)V

    .line 95
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 96
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lcom/facebook/imagepipeline/d/h;)V
    .locals 3

    const-class v0, Lcom/facebook/imagepipeline/d/j;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/d/j;->b:Lcom/facebook/imagepipeline/d/j;

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lcom/facebook/imagepipeline/d/j;->a:Ljava/lang/Class;

    const-string v2, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    invoke-static {v1, v2}, Lcom/facebook/common/c/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 108
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/d/j;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/d/j;-><init>(Lcom/facebook/imagepipeline/d/h;)V

    sput-object v1, Lcom/facebook/imagepipeline/d/j;->b:Lcom/facebook/imagepipeline/d/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 101
    monitor-exit v0

    throw p0
.end method

.method private l()Lcom/facebook/imagepipeline/animated/a/a;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->t:Lcom/facebook/imagepipeline/animated/a/a;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->i()Lcom/facebook/imagepipeline/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 164
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->k()Lcom/facebook/imagepipeline/d/e;

    move-result-object v1

    .line 165
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->b()Lcom/facebook/imagepipeline/c/h;

    move-result-object v2

    .line 162
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/animated/a/b;->a(Lcom/facebook/imagepipeline/b/f;Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/c/h;)Lcom/facebook/imagepipeline/animated/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->t:Lcom/facebook/imagepipeline/animated/a/a;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->t:Lcom/facebook/imagepipeline/animated/a/a;

    return-object v0
.end method

.method private m()Lcom/facebook/imagepipeline/decoder/b;
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->k:Lcom/facebook/imagepipeline/decoder/b;

    if-nez v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->m()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->m()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->k:Lcom/facebook/imagepipeline/decoder/b;

    goto :goto_1

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/j;->l()Lcom/facebook/imagepipeline/animated/a/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/animated/a/a;->a(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/h;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/animated/a/a;->b(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 232
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/h;->z()Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v2

    if-nez v2, :cond_2

    .line 233
    new-instance v2, Lcom/facebook/imagepipeline/decoder/a;

    .line 236
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->j()Lcom/facebook/imagepipeline/i/f;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/i/f;)V

    iput-object v2, p0, Lcom/facebook/imagepipeline/d/j;->k:Lcom/facebook/imagepipeline/decoder/b;

    goto :goto_1

    .line 238
    :cond_2
    new-instance v2, Lcom/facebook/imagepipeline/decoder/a;

    .line 241
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->j()Lcom/facebook/imagepipeline/i/f;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 242
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/d/h;->z()Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/decoder/c;->a()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/i/f;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/facebook/imagepipeline/d/j;->k:Lcom/facebook/imagepipeline/decoder/b;

    .line 244
    invoke-static {}, Lcom/facebook/d/d;->a()Lcom/facebook/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 246
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->z()Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/c;->b()Ljava/util/List;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Lcom/facebook/d/d;->a(Ljava/util/List;)V

    .line 250
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->k:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method private n()Lcom/facebook/imagepipeline/d/l;
    .locals 22

    move-object/from16 v0, p0

    .line 364
    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->n:Lcom/facebook/imagepipeline/d/l;

    if-nez v1, :cond_0

    .line 365
    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 367
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->k()Lcom/facebook/imagepipeline/d/i$c;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 370
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->e()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 371
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->u()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ac;->h()Lcom/facebook/common/memory/a;

    move-result-object v4

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/j;->m()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v5

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 373
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->v()Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v6

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 374
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->h()Z

    move-result v7

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 375
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->x()Z

    move-result v8

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 376
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->c()Z

    move-result v9

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 377
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->k()Lcom/facebook/imagepipeline/d/e;

    move-result-object v10

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 378
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->u()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v1

    iget-object v11, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v11}, Lcom/facebook/imagepipeline/d/h;->s()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/facebook/imagepipeline/memory/ac;->a(I)Lcom/facebook/common/memory/g;

    move-result-object v11

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/j;->c()Lcom/facebook/imagepipeline/c/o;

    move-result-object v12

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/j;->e()Lcom/facebook/imagepipeline/c/o;

    move-result-object v13

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/j;->f()Lcom/facebook/imagepipeline/c/e;

    move-result-object v14

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/j;->p()Lcom/facebook/imagepipeline/c/e;

    move-result-object v15

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 383
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->d()Lcom/facebook/imagepipeline/c/f;

    move-result-object v16

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/j;->i()Lcom/facebook/imagepipeline/b/f;

    move-result-object v17

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 385
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->g()I

    move-result v18

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 386
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->h()I

    move-result v19

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 387
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->l()Z

    move-result v20

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 388
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->m()I

    move-result v21

    .line 369
    invoke-interface/range {v2 .. v21}, Lcom/facebook/imagepipeline/d/i$c;->a(Landroid/content/Context;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/d/e;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/b/f;IIZI)Lcom/facebook/imagepipeline/d/l;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/d/j;->n:Lcom/facebook/imagepipeline/d/l;

    .line 390
    :cond_0
    iget-object v1, v0, Lcom/facebook/imagepipeline/d/j;->n:Lcom/facebook/imagepipeline/d/l;

    return-object v1
.end method

.method private o()Lcom/facebook/imagepipeline/d/m;
    .locals 13

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 396
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->o:Lcom/facebook/imagepipeline/d/m;

    if-nez v0, :cond_1

    .line 399
    new-instance v0, Lcom/facebook/imagepipeline/d/m;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 401
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 402
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/j;->n()Lcom/facebook/imagepipeline/d/l;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 403
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->t()Lcom/facebook/imagepipeline/k/ag;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 404
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->x()Z

    move-result v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 405
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->b()Z

    move-result v6

    iget-object v7, p0, Lcom/facebook/imagepipeline/d/j;->c:Lcom/facebook/imagepipeline/k/at;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 407
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->h()Z

    move-result v8

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 409
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->j()Z

    move-result v10

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 410
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->i()Z

    move-result v11

    .line 411
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/j;->q()Lcom/facebook/imagepipeline/m/c;

    move-result-object v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/facebook/imagepipeline/d/m;-><init>(Landroid/content/ContentResolver;Lcom/facebook/imagepipeline/d/l;Lcom/facebook/imagepipeline/k/ag;ZZLcom/facebook/imagepipeline/k/at;ZZZZLcom/facebook/imagepipeline/m/c;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->o:Lcom/facebook/imagepipeline/d/m;

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->o:Lcom/facebook/imagepipeline/d/m;

    return-object v0
.end method

.method private p()Lcom/facebook/imagepipeline/c/e;
    .locals 8

    .line 425
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->p:Lcom/facebook/imagepipeline/c/e;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/facebook/imagepipeline/c/e;

    .line 428
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->k()Lcom/facebook/cache/a/i;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 429
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->u()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/d/h;->s()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/ac;->a(I)Lcom/facebook/common/memory/g;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 430
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->u()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ac;->g()Lcom/facebook/common/memory/j;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 431
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->k()Lcom/facebook/imagepipeline/d/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 432
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->k()Lcom/facebook/imagepipeline/d/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 433
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->l()Lcom/facebook/imagepipeline/c/n;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/c/e;-><init>(Lcom/facebook/cache/a/i;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/n;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->p:Lcom/facebook/imagepipeline/c/e;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->p:Lcom/facebook/imagepipeline/c/e;

    return-object v0
.end method

.method private q()Lcom/facebook/imagepipeline/m/c;
    .locals 5

    .line 447
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->m:Lcom/facebook/imagepipeline/m/c;

    if-nez v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->n()Lcom/facebook/imagepipeline/m/c;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 449
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->o()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 450
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    new-instance v0, Lcom/facebook/imagepipeline/m/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 452
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->m()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/m/g;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->m:Lcom/facebook/imagepipeline/m/c;

    goto :goto_0

    .line 454
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/m/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 456
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->m()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 457
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/i;->a()Z

    move-result v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 458
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/d/h;->n()Lcom/facebook/imagepipeline/m/c;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 459
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/d/h;->o()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/m/e;-><init>(IZLcom/facebook/imagepipeline/m/c;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->m:Lcom/facebook/imagepipeline/m/c;

    .line 462
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->m:Lcom/facebook/imagepipeline/m/c;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/facebook/imagepipeline/c/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->e:Lcom/facebook/imagepipeline/c/h;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 181
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->b()Lcom/facebook/common/internal/j;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 182
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->r()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 183
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/h;->c()Lcom/facebook/imagepipeline/c/h$a;

    move-result-object v2

    .line 180
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/c/a;->a(Lcom/facebook/common/internal/j;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/c/h$a;)Lcom/facebook/imagepipeline/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->e:Lcom/facebook/imagepipeline/c/h;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->e:Lcom/facebook/imagepipeline/c/h;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lcom/facebook/imagepipeline/f/a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 172
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/j;->l()Lcom/facebook/imagepipeline/animated/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/a/a;->a(Landroid/content/Context;)Lcom/facebook/imagepipeline/f/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c()Lcom/facebook/imagepipeline/c/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/o<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->f:Lcom/facebook/imagepipeline/c/o;

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->b()Lcom/facebook/imagepipeline/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 193
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->l()Lcom/facebook/imagepipeline/c/n;

    move-result-object v1

    .line 191
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/b;->a(Lcom/facebook/imagepipeline/c/h;Lcom/facebook/imagepipeline/c/n;)Lcom/facebook/imagepipeline/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->f:Lcom/facebook/imagepipeline/c/o;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->f:Lcom/facebook/imagepipeline/c/o;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/c/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->g:Lcom/facebook/imagepipeline/c/h;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 202
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->j()Lcom/facebook/common/internal/j;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->r()Lcom/facebook/common/memory/c;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/l;->a(Lcom/facebook/common/internal/j;Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->g:Lcom/facebook/imagepipeline/c/h;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->g:Lcom/facebook/imagepipeline/c/h;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/c/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/o<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->h:Lcom/facebook/imagepipeline/c/o;

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->d()Lcom/facebook/imagepipeline/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 212
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->l()Lcom/facebook/imagepipeline/c/n;

    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/m;->a(Lcom/facebook/imagepipeline/c/h;Lcom/facebook/imagepipeline/c/n;)Lcom/facebook/imagepipeline/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->h:Lcom/facebook/imagepipeline/c/o;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->h:Lcom/facebook/imagepipeline/c/o;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/c/e;
    .locals 8

    .line 254
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->i:Lcom/facebook/imagepipeline/c/e;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/facebook/imagepipeline/c/e;

    .line 257
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->g()Lcom/facebook/cache/a/i;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 258
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->u()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/d/h;->s()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/ac;->a(I)Lcom/facebook/common/memory/g;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 259
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->u()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ac;->g()Lcom/facebook/common/memory/j;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 260
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->k()Lcom/facebook/imagepipeline/d/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 261
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->k()Lcom/facebook/imagepipeline/d/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 262
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->l()Lcom/facebook/imagepipeline/c/n;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/c/e;-><init>(Lcom/facebook/cache/a/i;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/n;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->i:Lcom/facebook/imagepipeline/c/e;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->i:Lcom/facebook/imagepipeline/c/e;

    return-object v0
.end method

.method public g()Lcom/facebook/cache/a/i;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->j:Lcom/facebook/cache/a/i;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->q()Lcom/facebook/cache/a/c;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->g()Lcom/facebook/imagepipeline/d/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/d/f;->a(Lcom/facebook/cache/a/c;)Lcom/facebook/cache/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->j:Lcom/facebook/cache/a/i;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->j:Lcom/facebook/cache/a/i;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/d/g;
    .locals 13

    .line 276
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->l:Lcom/facebook/imagepipeline/d/g;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/facebook/imagepipeline/d/g;

    .line 279
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/j;->o()Lcom/facebook/imagepipeline/d/m;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 280
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->w()Ljava/util/Set;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 281
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->p()Lcom/facebook/common/internal/j;

    move-result-object v4

    .line 282
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->c()Lcom/facebook/imagepipeline/c/o;

    move-result-object v5

    .line 283
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->e()Lcom/facebook/imagepipeline/c/o;

    move-result-object v6

    .line 284
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->f()Lcom/facebook/imagepipeline/c/e;

    move-result-object v7

    .line 285
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/j;->p()Lcom/facebook/imagepipeline/c/e;

    move-result-object v8

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 286
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->d()Lcom/facebook/imagepipeline/c/f;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/imagepipeline/d/j;->c:Lcom/facebook/imagepipeline/k/at;

    const/4 v1, 0x0

    .line 288
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/k;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/j;

    move-result-object v11

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 289
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->n()Lcom/facebook/common/internal/j;

    move-result-object v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/facebook/imagepipeline/d/g;-><init>(Lcom/facebook/imagepipeline/d/m;Ljava/util/Set;Lcom/facebook/common/internal/j;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/at;Lcom/facebook/common/internal/j;Lcom/facebook/common/internal/j;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->l:Lcom/facebook/imagepipeline/d/g;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->l:Lcom/facebook/imagepipeline/d/g;

    return-object v0
.end method

.method public i()Lcom/facebook/imagepipeline/b/f;
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->r:Lcom/facebook/imagepipeline/b/f;

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 318
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->u()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/j;->j()Lcom/facebook/imagepipeline/i/f;

    move-result-object v1

    .line 317
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/d/j;->a(Lcom/facebook/imagepipeline/memory/ac;Lcom/facebook/imagepipeline/i/f;)Lcom/facebook/imagepipeline/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->r:Lcom/facebook/imagepipeline/b/f;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->r:Lcom/facebook/imagepipeline/b/f;

    return-object v0
.end method

.method public j()Lcom/facebook/imagepipeline/i/f;
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->s:Lcom/facebook/imagepipeline/i/f;

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 357
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->u()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    .line 358
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->A()Lcom/facebook/imagepipeline/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/i;->b()Z

    move-result v1

    .line 356
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/d/j;->a(Lcom/facebook/imagepipeline/memory/ac;Z)Lcom/facebook/imagepipeline/i/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->s:Lcom/facebook/imagepipeline/i/f;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->s:Lcom/facebook/imagepipeline/i/f;

    return-object v0
.end method

.method public k()Lcom/facebook/cache/a/i;
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->q:Lcom/facebook/cache/a/i;

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h;->y()Lcom/facebook/cache/a/c;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/j;->d:Lcom/facebook/imagepipeline/d/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/h;->g()Lcom/facebook/imagepipeline/d/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/d/f;->a(Lcom/facebook/cache/a/c;)Lcom/facebook/cache/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/j;->q:Lcom/facebook/cache/a/i;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/j;->q:Lcom/facebook/cache/a/i;

    return-object v0
.end method
