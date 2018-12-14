.class public final Lcom/google/android/exoplayer2/upstream/cache/b;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final b:Lcom/google/android/exoplayer2/upstream/f;

.field private final c:Lcom/google/android/exoplayer2/upstream/f;

.field private final d:Lcom/google/android/exoplayer2/upstream/f;

.field private final e:Lcom/google/android/exoplayer2/upstream/cache/b$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private i:Lcom/google/android/exoplayer2/upstream/f;

.field private j:Z

.field private k:Landroid/net/Uri;

.field private l:Landroid/net/Uri;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:J

.field private p:J

.field private q:Lcom/google/android/exoplayer2/upstream/cache/e;

.field private r:Z

.field private s:Z

.field private t:J

.field private u:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/upstream/e;ILcom/google/android/exoplayer2/upstream/cache/b$a;)V
    .locals 1
    .param p6    # Lcom/google/android/exoplayer2/upstream/cache/b$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 202
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->b:Lcom/google/android/exoplayer2/upstream/f;

    and-int/lit8 p1, p5, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 203
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->f:Z

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 204
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->g:Z

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    .line 205
    :cond_2
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->h:Z

    .line 207
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->d:Lcom/google/android/exoplayer2/upstream/f;

    if-eqz p4, :cond_3

    .line 209
    new-instance p1, Lcom/google/android/exoplayer2/upstream/r;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplayer2/upstream/r;-><init>(Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/upstream/e;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/f;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/f;

    .line 213
    :goto_2
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->e:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 431
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/i;

    move-result-object p0

    .line 432
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/j;->b(Lcom/google/android/exoplayer2/upstream/cache/i;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->e:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->e:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/b$a;->a(I)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 323
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->s:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 325
    :cond_0
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->f:Z

    if-eqz v2, :cond_1

    .line 327
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->n:Ljava/lang/String;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/e;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 330
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 333
    :cond_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->n:Ljava/lang/String;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/e;

    move-result-object v2

    :goto_0
    const-wide/16 v4, -0x1

    if-nez v2, :cond_2

    .line 341
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->d:Lcom/google/android/exoplayer2/upstream/f;

    .line 342
    new-instance v14, Lcom/google/android/exoplayer2/upstream/h;

    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    iget-object v12, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->n:Ljava/lang/String;

    iget v13, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->m:I

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/google/android/exoplayer2/upstream/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    goto/16 :goto_4

    .line 343
    :cond_2
    iget-boolean v6, v2, Lcom/google/android/exoplayer2/upstream/cache/e;->d:Z

    if-eqz v6, :cond_4

    .line 345
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/cache/e;->e:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 346
    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    iget-wide v10, v2, Lcom/google/android/exoplayer2/upstream/cache/e;->b:J

    sub-long v12, v8, v10

    .line 347
    iget-wide v8, v2, Lcom/google/android/exoplayer2/upstream/cache/e;->c:J

    sub-long v10, v8, v12

    .line 348
    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_3

    .line 349
    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v14, v8

    goto :goto_1

    :cond_3
    move-wide v14, v10

    .line 351
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer2/upstream/h;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    iget-object v10, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->n:Ljava/lang/String;

    iget v11, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->m:I

    move-object v6, v3

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-wide v10, v12

    move-wide v12, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    invoke-direct/range {v6 .. v15}, Lcom/google/android/exoplayer2/upstream/h;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 352
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->b:Lcom/google/android/exoplayer2/upstream/f;

    move-object/from16 v18, v6

    move-object v6, v3

    move-object/from16 v3, v18

    goto :goto_4

    .line 356
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/e;->a()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 357
    iget-wide v6, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    :cond_5
    :goto_2
    move-wide v12, v6

    goto :goto_3

    .line 359
    :cond_6
    iget-wide v6, v2, Lcom/google/android/exoplayer2/upstream/cache/e;->c:J

    .line 360
    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    .line 361
    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_2

    .line 364
    :goto_3
    new-instance v6, Lcom/google/android/exoplayer2/upstream/h;

    iget-object v9, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    iget-object v14, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->n:Ljava/lang/String;

    iget v15, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->m:I

    move-object v8, v6

    invoke-direct/range {v8 .. v15}, Lcom/google/android/exoplayer2/upstream/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 365
    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/f;

    if-eqz v7, :cond_7

    .line 366
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/f;

    goto :goto_4

    .line 368
    :cond_7
    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->d:Lcom/google/android/exoplayer2/upstream/f;

    .line 369
    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v8, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/e;)V

    move-object v2, v3

    move-object v3, v7

    .line 374
    :goto_4
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->s:Z

    if-nez v7, :cond_8

    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->d:Lcom/google/android/exoplayer2/upstream/f;

    if-ne v3, v7, :cond_8

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    const-wide/32 v9, 0x19000

    add-long v11, v7, v9

    goto :goto_5

    :cond_8
    const-wide v11, 0x7fffffffffffffffL

    :goto_5
    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->u:J

    if-eqz p1, :cond_b

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->e()Z

    move-result v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 380
    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->d:Lcom/google/android/exoplayer2/upstream/f;

    if-ne v3, v7, :cond_9

    return-void

    .line 386
    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->h()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 388
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/e;->b()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 390
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/e;)V

    .line 392
    :cond_a
    throw v0

    :cond_b
    :goto_6
    if-eqz v2, :cond_c

    .line 396
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/e;->b()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 397
    iput-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->q:Lcom/google/android/exoplayer2/upstream/cache/e;

    .line 399
    :cond_c
    iput-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/f;

    .line 400
    iget-wide v7, v6, Lcom/google/android/exoplayer2/upstream/h;->e:J

    cmp-long v2, v7, v4

    const/4 v7, 0x1

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z

    .line 401
    invoke-interface {v3, v6}, Lcom/google/android/exoplayer2/upstream/f;->a(Lcom/google/android/exoplayer2/upstream/h;)J

    move-result-wide v2

    .line 404
    new-instance v6, Lcom/google/android/exoplayer2/upstream/cache/k;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/upstream/cache/k;-><init>()V

    .line 405
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z

    if-eqz v8, :cond_e

    cmp-long v8, v2, v4

    if-eqz v8, :cond_e

    .line 406
    iput-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    .line 407
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    add-long v8, v2, v4

    invoke-static {v6, v8, v9}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Lcom/google/android/exoplayer2/upstream/cache/k;J)V

    .line 409
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->d()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 410
    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/f;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/f;->b()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->l:Landroid/net/Uri;

    .line 411
    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->l:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v7

    if-eqz v2, :cond_f

    .line 413
    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->l:Landroid/net/Uri;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Lcom/google/android/exoplayer2/upstream/cache/k;Landroid/net/Uri;)V

    goto :goto_8

    .line 415
    :cond_f
    invoke-static {v6}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Lcom/google/android/exoplayer2/upstream/cache/k;)V

    .line 418
    :cond_10
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->g()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 419
    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/b;->n:Ljava/lang/String;

    invoke-interface {v2, v3, v6}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/k;)V

    :cond_11
    return-void
.end method

.method private static a(Ljava/io/IOException;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 439
    instance-of v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v0, :cond_0

    .line 440
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 445
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/google/android/exoplayer2/upstream/h;)I
    .locals 4

    .line 489
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->r:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 491
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->h:Z

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/h;->e:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private b(Ljava/io/IOException;)V
    .locals 1

    .line 483
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 484
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->r:Z

    :cond_1
    return-void
.end method

.method private c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 424
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    .line 425
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->c(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    .line 451
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private e()Z
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->d:Lcom/google/android/exoplayer2/upstream/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()Z
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->b:Lcom/google/android/exoplayer2/upstream/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()Z
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 471
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/f;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/f;

    .line 474
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->q:Lcom/google/android/exoplayer2/upstream/cache/e;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->q:Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/e;)V

    .line 477
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->q:Lcom/google/android/exoplayer2/upstream/cache/e;

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    .line 473
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/f;

    .line 474
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->q:Lcom/google/android/exoplayer2/upstream/cache/e;

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->q:Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/e;)V

    .line 477
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->q:Lcom/google/android/exoplayer2/upstream/cache/e;

    :cond_2
    throw v2
.end method

.method private i()V
    .locals 8

    .line 505
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->e:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->t:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->e:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->t:J

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/upstream/cache/b$a;->a(JJ)V

    .line 507
    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->t:J

    :cond_0
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 255
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v1, -0x1

    if-nez v5, :cond_1

    return v1

    .line 259
    :cond_1
    :try_start_0
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->u:J

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    .line 260
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(Z)V

    .line 262
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/f;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/f;->a([BII)I

    move-result v2

    const-wide/16 v5, -0x1

    if-eq v2, v1, :cond_4

    .line 264
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 265
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->t:J

    int-to-long v3, v2

    add-long v7, p1, v3

    iput-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->t:J

    .line 267
    :cond_3
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    int-to-long v3, v2

    add-long v7, p1, v3

    iput-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    .line 268
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    cmp-long p3, p1, v5

    if-eqz p3, :cond_6

    .line 269
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    const/4 p3, 0x0

    sub-long v5, p1, v3

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    goto :goto_0

    .line 271
    :cond_4
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z

    if-eqz v7, :cond_5

    .line 272
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->c()V

    goto :goto_0

    .line 273
    :cond_5
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    cmp-long v9, v7, v3

    if-gtz v9, :cond_7

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    return v2

    .line 274
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->h()V

    .line 275
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(Z)V

    .line 276
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/b;->a([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 280
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z

    if-eqz p2, :cond_8

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(Ljava/io/IOException;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 281
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->c()V

    return v1

    .line 284
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/b;->b(Ljava/io/IOException;)V

    .line 285
    throw p1
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/h;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/f;->a(Lcom/google/android/exoplayer2/upstream/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/h;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->l:Landroid/net/Uri;

    .line 222
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/h;->g:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->m:I

    .line 223
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/h;->d:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    .line 225
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/b;->b(Lcom/google/android/exoplayer2/upstream/h;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 226
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->s:Z

    .line 227
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->s:Z

    if-eqz v1, :cond_1

    .line 228
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(I)V

    .line 231
    :cond_1
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/h;->e:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->s:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    .line 235
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    .line 236
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/h;->d:J

    const/4 p1, 0x0

    sub-long v5, v0, v3

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    .line 237
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-gtz p1, :cond_4

    .line 238
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 232
    :cond_3
    :goto_1
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/h;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J

    .line 242
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(Z)V

    .line 243
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 245
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/b;->b(Ljava/io/IOException;)V

    .line 246
    throw p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    .line 297
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->l:Landroid/net/Uri;

    .line 298
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->i()V

    .line 300
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 302
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/b;->b(Ljava/io/IOException;)V

    .line 303
    throw v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->l:Landroid/net/Uri;

    return-object v0
.end method
