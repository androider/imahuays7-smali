.class public Lmaster/flame/danmaku/a/e;
.super Ljava/lang/Object;
.source "DrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/a/h;


# instance fields
.field protected final a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field protected final b:Lmaster/flame/danmaku/danmaku/model/b;

.field protected c:Lmaster/flame/danmaku/danmaku/model/l;

.field protected d:Lmaster/flame/danmaku/danmaku/a/a;

.field e:Lmaster/flame/danmaku/a/h$a;

.field final f:Lmaster/flame/danmaku/danmaku/b/a;

.field g:Lmaster/flame/danmaku/danmaku/model/f;

.field protected h:Z

.field protected i:Z

.field protected j:I

.field private k:Lmaster/flame/danmaku/danmaku/model/l;

.field private l:J

.field private final m:Lmaster/flame/danmaku/danmaku/b/a$b;

.field private n:J

.field private o:J

.field private p:Z

.field private q:Lmaster/flame/danmaku/danmaku/model/d;

.field private r:Lmaster/flame/danmaku/danmaku/model/android/e;

.field private s:Lmaster/flame/danmaku/danmaku/model/l;

.field private t:Z

.field private u:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/a/h$a;)V
    .locals 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/a/e;->k:Lmaster/flame/danmaku/danmaku/model/l;

    const-wide/16 v2, 0x0

    .line 55
    iput-wide v2, p0, Lmaster/flame/danmaku/a/e;->l:J

    .line 57
    new-instance v0, Lmaster/flame/danmaku/danmaku/b/a$b;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/b/a$b;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/a/e;->m:Lmaster/flame/danmaku/danmaku/b/a$b;

    .line 71
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/a/e;->r:Lmaster/flame/danmaku/danmaku/model/android/e;

    .line 77
    new-instance v0, Lmaster/flame/danmaku/a/e$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/a/e$1;-><init>(Lmaster/flame/danmaku/a/e;)V

    iput-object v0, p0, Lmaster/flame/danmaku/a/e;->u:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;

    if-nez p2, :cond_0

    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_0
    iput-object p2, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 90
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/a/e;->b:Lmaster/flame/danmaku/danmaku/model/b;

    .line 91
    iput-object p3, p0, Lmaster/flame/danmaku/a/e;->e:Lmaster/flame/danmaku/a/h$a;

    .line 92
    new-instance p3, Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-direct {p3, p2}, Lmaster/flame/danmaku/danmaku/b/a/a;-><init>(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    iput-object p3, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    .line 93
    iget-object p2, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    new-instance p3, Lmaster/flame/danmaku/a/e$2;

    invoke-direct {p3, p0}, Lmaster/flame/danmaku/a/e$2;-><init>(Lmaster/flame/danmaku/a/e;)V

    invoke-interface {p2, p3}, Lmaster/flame/danmaku/danmaku/b/a;->setOnDanmakuShownListener(Lmaster/flame/danmaku/danmaku/b/a$a;)V

    .line 102
    iget-object p2, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    iget-object p3, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    :goto_1
    invoke-interface {p2, p3}, Lmaster/flame/danmaku/danmaku/b/a;->a(Z)V

    .line 103
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/e;->a(Lmaster/flame/danmaku/danmaku/model/f;)V

    .line 104
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    const-string p2, "1017_Filter"

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/a/b;->a(Ljava/lang/String;)Lmaster/flame/danmaku/a/b$e;

    goto :goto_2

    .line 109
    :cond_3
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    const-string p2, "1017_Filter"

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/a/b;->b(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Lmaster/flame/danmaku/danmaku/b/a$b;)V
    .locals 4

    .line 507
    iget v0, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->p:Z

    .line 508
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->p:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 509
    iput-wide v1, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->n:J

    .line 511
    :cond_1
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->e:Lmaster/flame/danmaku/danmaku/model/d;

    const/4 v3, 0x0

    .line 512
    iput-object v3, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->e:Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v1

    :cond_2
    iput-wide v1, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->o:J

    .line 514
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->b:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    move-result-wide v0

    iput-wide v0, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->m:J

    return-void
.end method

.method private a(Lmaster/flame/danmaku/danmaku/b/a$b;Lmaster/flame/danmaku/danmaku/model/l;Lmaster/flame/danmaku/danmaku/model/l;)V
    .locals 3

    .line 500
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/b/a$b;->a()V

    .line 501
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->b:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    const/4 v0, 0x0

    .line 502
    iput v0, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->c:I

    if-eqz p2, :cond_0

    .line 503
    invoke-interface {p2}, Lmaster/flame/danmaku/danmaku/model/l;->a()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/l;->a()I

    move-result v0

    :cond_1
    add-int/2addr p2, v0

    iput p2, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lmaster/flame/danmaku/danmaku/model/b;)Lmaster/flame/danmaku/danmaku/b/a$b;
    .locals 1

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->g:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/a/e;->a(Lmaster/flame/danmaku/danmaku/model/b;Lmaster/flame/danmaku/danmaku/model/f;)Lmaster/flame/danmaku/danmaku/b/a$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Lmaster/flame/danmaku/danmaku/model/b;Lmaster/flame/danmaku/danmaku/model/f;)Lmaster/flame/danmaku/danmaku/b/a$b;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 346
    iget-boolean v2, v0, Lmaster/flame/danmaku/a/e;->h:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, v0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/b/a;->b()V

    .line 348
    iput-boolean v3, v0, Lmaster/flame/danmaku/a/e;->h:Z

    .line 350
    :cond_0
    iget-object v2, v0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    .line 351
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Canvas;

    .line 352
    invoke-static {v2}, Lmaster/flame/danmaku/a/d;->a(Landroid/graphics/Canvas;)V

    .line 353
    iget-boolean v2, v0, Lmaster/flame/danmaku/a/e;->p:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lmaster/flame/danmaku/a/e;->t:Z

    if-nez v2, :cond_1

    .line 354
    iget-object v1, v0, Lmaster/flame/danmaku/a/e;->m:Lmaster/flame/danmaku/danmaku/b/a$b;

    return-object v1

    .line 357
    :cond_1
    iput-boolean v3, v0, Lmaster/flame/danmaku/a/e;->t:Z

    .line 358
    iget-object v2, v0, Lmaster/flame/danmaku/a/e;->m:Lmaster/flame/danmaku/danmaku/b/a$b;

    .line 360
    iget-wide v5, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v7, v0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v7, v7, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    sub-long v9, v5, v7

    const-wide/16 v5, 0x64

    sub-long v7, v9, v5

    .line 361
    iget-wide v5, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v9, v0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v9, v9, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v9, v9, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    add-long v11, v5, v9

    .line 362
    iget-object v5, v0, Lmaster/flame/danmaku/a/e;->k:Lmaster/flame/danmaku/danmaku/model/l;

    .line 363
    iget-wide v9, v0, Lmaster/flame/danmaku/a/e;->n:J

    cmp-long v6, v9, v7

    if-gtz v6, :cond_3

    iget-wide v9, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-wide v13, v0, Lmaster/flame/danmaku/a/e;->o:J

    cmp-long v1, v9, v13

    if-lez v1, :cond_2

    goto :goto_0

    .line 371
    :cond_2
    iget-wide v7, v0, Lmaster/flame/danmaku/a/e;->n:J

    .line 372
    iget-wide v11, v0, Lmaster/flame/danmaku/a/e;->o:J

    move-wide v13, v11

    move-wide v11, v7

    move-object v7, v5

    goto :goto_1

    .line 364
    :cond_3
    :goto_0
    iget-object v1, v0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v1, v7, v8, v11, v12}, Lmaster/flame/danmaku/danmaku/model/l;->b(JJ)Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 366
    iput-object v1, v0, Lmaster/flame/danmaku/a/e;->k:Lmaster/flame/danmaku/danmaku/model/l;

    .line 368
    :cond_4
    iput-wide v7, v0, Lmaster/flame/danmaku/a/e;->n:J

    .line 369
    iput-wide v11, v0, Lmaster/flame/danmaku/a/e;->o:J

    move-wide v13, v11

    move-wide v11, v7

    move-object v7, v1

    .line 376
    :goto_1
    iget-object v1, v0, Lmaster/flame/danmaku/a/e;->s:Lmaster/flame/danmaku/danmaku/model/l;

    .line 377
    invoke-direct {v0, v2, v1, v7}, Lmaster/flame/danmaku/a/e;->a(Lmaster/flame/danmaku/danmaku/b/a$b;Lmaster/flame/danmaku/danmaku/model/l;Lmaster/flame/danmaku/danmaku/model/l;)V

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    .line 378
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/l;->e()Z

    move-result v6

    if-nez v6, :cond_5

    .line 379
    iget-object v6, v0, Lmaster/flame/danmaku/a/e;->m:Lmaster/flame/danmaku/danmaku/b/a$b;

    iput-boolean v5, v6, Lmaster/flame/danmaku/danmaku/b/a$b;->a:Z

    .line 380
    iget-object v15, v0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    const-wide/16 v18, 0x0

    iget-object v6, v0, Lmaster/flame/danmaku/a/e;->m:Lmaster/flame/danmaku/danmaku/b/a$b;

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    move-object/from16 v20, v6

    invoke-interface/range {v15 .. v20}, Lmaster/flame/danmaku/danmaku/b/a;->a(Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/l;JLmaster/flame/danmaku/danmaku/b/a$b;)V

    .line 384
    :cond_5
    iget-object v1, v0, Lmaster/flame/danmaku/a/e;->m:Lmaster/flame/danmaku/danmaku/b/a$b;

    iput-boolean v3, v1, Lmaster/flame/danmaku/danmaku/b/a$b;->a:Z

    if-eqz v7, :cond_9

    .line 385
    invoke-interface {v7}, Lmaster/flame/danmaku/danmaku/model/l;->e()Z

    move-result v1

    if-nez v1, :cond_9

    .line 386
    iget-object v5, v0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    iget-object v6, v0, Lmaster/flame/danmaku/a/e;->b:Lmaster/flame/danmaku/danmaku/model/b;

    iget-wide v8, v0, Lmaster/flame/danmaku/a/e;->l:J

    move-object v10, v2

    invoke-interface/range {v5 .. v10}, Lmaster/flame/danmaku/danmaku/b/a;->a(Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/l;JLmaster/flame/danmaku/danmaku/b/a$b;)V

    .line 387
    invoke-direct {v0, v2}, Lmaster/flame/danmaku/a/e;->a(Lmaster/flame/danmaku/danmaku/b/a$b;)V

    .line 388
    iget-boolean v1, v2, Lmaster/flame/danmaku/danmaku/b/a$b;->p:Z

    if-eqz v1, :cond_8

    .line 389
    iget-object v1, v0, Lmaster/flame/danmaku/a/e;->q:Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lmaster/flame/danmaku/a/e;->q:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 390
    iput-object v4, v0, Lmaster/flame/danmaku/a/e;->q:Lmaster/flame/danmaku/danmaku/model/d;

    .line 391
    iget-object v1, v0, Lmaster/flame/danmaku/a/e;->e:Lmaster/flame/danmaku/a/h$a;

    if-eqz v1, :cond_6

    .line 392
    iget-object v1, v0, Lmaster/flame/danmaku/a/e;->e:Lmaster/flame/danmaku/a/h$a;

    invoke-interface {v1}, Lmaster/flame/danmaku/a/h$a;->b()V

    .line 395
    :cond_6
    iget-wide v3, v2, Lmaster/flame/danmaku/danmaku/b/a$b;->n:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    .line 396
    iput-wide v11, v2, Lmaster/flame/danmaku/danmaku/b/a$b;->n:J

    .line 398
    :cond_7
    iget-wide v3, v2, Lmaster/flame/danmaku/danmaku/b/a$b;->o:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    .line 399
    iput-wide v13, v2, Lmaster/flame/danmaku/danmaku/b/a$b;->o:J

    :cond_8
    return-object v2

    .line 404
    :cond_9
    iput-boolean v5, v2, Lmaster/flame/danmaku/danmaku/b/a$b;->p:Z

    .line 405
    iput-wide v11, v2, Lmaster/flame/danmaku/danmaku/b/a$b;->n:J

    .line 406
    iput-wide v13, v2, Lmaster/flame/danmaku/danmaku/b/a$b;->o:J

    return-object v2

    :cond_a
    return-object v4
.end method

.method public a()V
    .locals 2

    .line 298
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, p0, Lmaster/flame/danmaku/a/e;->u:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 322
    iput p1, p0, Lmaster/flame/danmaku/a/e;->j:I

    return-void
.end method

.method public a(J)V
    .locals 4

    .line 269
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/e;->d()V

    .line 270
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 271
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->f()V

    .line 272
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->g()V

    .line 273
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->h()V

    .line 274
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/a/e;->s:Lmaster/flame/danmaku/danmaku/model/l;

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    const-wide/16 v0, 0x0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 275
    :cond_0
    iput-wide p1, p0, Lmaster/flame/danmaku/a/e;->l:J

    .line 276
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->m:Lmaster/flame/danmaku/danmaku/b/a$b;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/b/a$b;->a()V

    .line 277
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->m:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-wide v2, p0, Lmaster/flame/danmaku/a/e;->l:J

    iput-wide v2, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->o:J

    .line 278
    iput-wide v0, p0, Lmaster/flame/danmaku/a/e;->o:J

    iput-wide v0, p0, Lmaster/flame/danmaku/a/e;->n:J

    .line 280
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    if-eqz p1, :cond_1

    .line 281
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/l;->d()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 283
    iput-object p1, p0, Lmaster/flame/danmaku/a/e;->q:Lmaster/flame/danmaku/danmaku/model/d;

    :cond_1
    return-void
.end method

.method public a(JJJ)V
    .locals 0

    .line 427
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->m:Lmaster/flame/danmaku/danmaku/b/a$b;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/b/a$b;->b()Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object p1

    .line 428
    iput-object p1, p0, Lmaster/flame/danmaku/a/e;->s:Lmaster/flame/danmaku/danmaku/model/l;

    .line 430
    new-instance p2, Lmaster/flame/danmaku/a/e$6;

    invoke-direct {p2, p0, p5, p6}, Lmaster/flame/danmaku/a/e$6;-><init>(Lmaster/flame/danmaku/a/e;J)V

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/danmaku/model/l;->a(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    .line 443
    iput-wide p3, p0, Lmaster/flame/danmaku/a/e;->l:J

    return-void
.end method

.method protected a(Lmaster/flame/danmaku/danmaku/a/a;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/a/a;->setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/a/a;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->b:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/a/a;->setDisplayer(Lmaster/flame/danmaku/danmaku/model/m;)Lmaster/flame/danmaku/danmaku/a/a;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->g:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/a/a;->setTimer(Lmaster/flame/danmaku/danmaku/model/f;)Lmaster/flame/danmaku/danmaku/a/a;

    move-result-object p1

    new-instance v0, Lmaster/flame/danmaku/a/e$5;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/a/e$5;-><init>(Lmaster/flame/danmaku/a/e;)V

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/a/a;->setListener(Lmaster/flame/danmaku/danmaku/a/a$a;)Lmaster/flame/danmaku/danmaku/a/a;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/a/a;->getDanmakus()Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object p1

    iput-object p1, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    .line 334
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->a()V

    .line 335
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    if-eqz p1, :cond_0

    .line 336
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/l;->d()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    iput-object p1, p0, Lmaster/flame/danmaku/a/e;->q:Lmaster/flame/danmaku/danmaku/model/d;

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 6

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 121
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->x:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->r:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    const/16 v0, 0xa

    .line 124
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/e;->b(I)V

    .line 126
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/l;->a()I

    move-result v0

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->r:I

    const/4 v0, 0x1

    .line 128
    iget-wide v1, p0, Lmaster/flame/danmaku/a/e;->n:J

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v1

    iget-wide v3, p0, Lmaster/flame/danmaku/a/e;->o:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 129
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->k:Lmaster/flame/danmaku/danmaku/model/l;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 130
    :try_start_2
    iget-object v1, p0, Lmaster/flame/danmaku/a/e;->k:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v1, p1}, Lmaster/flame/danmaku/danmaku/model/l;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v1

    .line 131
    monitor-exit v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    .line 132
    :cond_2
    iget-boolean v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->x:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 136
    :cond_3
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 137
    :try_start_4
    iget-object v2, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v2, p1}, Lmaster/flame/danmaku/danmaku/model/l;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v2

    .line 138
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    if-nez v2, :cond_5

    :cond_4
    const-wide/16 v0, 0x0

    .line 140
    :try_start_5
    iput-wide v0, p0, Lmaster/flame/danmaku/a/e;->o:J

    iput-wide v0, p0, Lmaster/flame/danmaku/a/e;->n:J

    :cond_5
    if-eqz v2, :cond_6

    .line 142
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->e:Lmaster/flame/danmaku/a/h$a;

    if-eqz v0, :cond_6

    .line 143
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->e:Lmaster/flame/danmaku/a/h$a;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/a/h$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 145
    :cond_6
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->q:Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_8

    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->q:Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v0

    iget-object v2, p0, Lmaster/flame/danmaku/a/e;->q:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    .line 146
    :cond_7
    iput-object p1, p0, Lmaster/flame/danmaku/a/e;->q:Lmaster/flame/danmaku/danmaku/model/d;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 148
    :cond_8
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 138
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 119
    monitor-exit p0

    throw p1
.end method

.method protected a(Lmaster/flame/danmaku/danmaku/model/f;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lmaster/flame/danmaku/a/e;->g:Lmaster/flame/danmaku/danmaku/model/f;

    return-void
.end method

.method public varargs a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 0

    .line 448
    invoke-virtual {p0, p1, p2, p3}, Lmaster/flame/danmaku/a/e;->b(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result p1

    .line 449
    iget-object p2, p0, Lmaster/flame/danmaku/a/e;->e:Lmaster/flame/danmaku/a/h$a;

    if-eqz p2, :cond_0

    .line 450
    iget-object p2, p0, Lmaster/flame/danmaku/a/e;->e:Lmaster/flame/danmaku/a/h$a;

    invoke-interface {p2}, Lmaster/flame/danmaku/a/h$a;->c()V

    :cond_0
    return p1
.end method

.method public b(J)Lmaster/flame/danmaku/danmaku/model/l;
    .locals 6

    .line 226
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    sub-long v2, p1, v0

    const-wide/16 v0, 0x64

    sub-long v4, v2, v0

    .line 227
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    add-long v2, p1, v0

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p2, p1, 0x1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 232
    :try_start_0
    iget-object p1, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {p1, v4, v5, v2, v3}, Lmaster/flame/danmaku/danmaku/model/l;->a(JJ)Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 238
    :goto_1
    new-instance p2, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {p2}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    if-eqz p1, :cond_1

    .line 239
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/l;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Lmaster/flame/danmaku/a/e$4;

    invoke-direct {v0, p0, p2}, Lmaster/flame/danmaku/a/e$4;-><init>(Lmaster/flame/danmaku/a/e;Lmaster/flame/danmaku/danmaku/model/l;)V

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/danmaku/model/l;->a(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    :cond_1
    return-object p2
.end method

.method public b()V
    .locals 1

    .line 303
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g()V

    .line 304
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/b/a;->c()V

    :cond_0
    return-void
.end method

.method protected declared-synchronized b(I)V
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/l;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->r:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->r:Lmaster/flame/danmaku/danmaku/model/android/e;

    new-instance v1, Lmaster/flame/danmaku/a/e$3;

    invoke-direct {v1, p0, p1}, Lmaster/flame/danmaku/a/e$3;-><init>(Lmaster/flame/danmaku/a/e;I)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/l$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 202
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 200
    monitor-exit p0

    throw p1
.end method

.method public b(Lmaster/flame/danmaku/danmaku/a/a;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lmaster/flame/danmaku/a/e;->d:Lmaster/flame/danmaku/danmaku/a/a;

    const/4 p1, 0x0

    .line 342
    iput-boolean p1, p0, Lmaster/flame/danmaku/a/e;->i:Z

    return-void
.end method

.method protected b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 0

    return-void
.end method

.method protected b(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 457
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 459
    :cond_0
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_9

    .line 462
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 463
    iget-object p2, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    const-string p3, "1017_Filter"

    invoke-virtual {p2, p3}, Lmaster/flame/danmaku/a/b;->a(Ljava/lang/String;)Lmaster/flame/danmaku/a/b$e;

    goto/16 :goto_2

    .line 465
    :cond_1
    iget-object p2, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    const-string p3, "1017_Filter"

    invoke-virtual {p2, p3}, Lmaster/flame/danmaku/a/b;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 469
    :cond_2
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_MARGIN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 472
    :cond_3
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUN_LINES:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->OVERLAPPING_ENABLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 477
    :cond_4
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->ALIGN_BOTTOM:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 478
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_9

    .line 480
    iget-object p3, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    if-eqz p3, :cond_a

    .line 481
    iget-object p3, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p3, p2}, Lmaster/flame/danmaku/danmaku/b/a;->b(Z)V

    goto :goto_2

    .line 473
    :cond_5
    :goto_0
    iget-object p2, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    if-eqz p2, :cond_a

    .line 474
    iget-object p2, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    iget-object p3, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e()Z

    move-result p3

    if-eqz p3, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    invoke-interface {p2, v0}, Lmaster/flame/danmaku/danmaku/b/a;->a(Z)V

    goto :goto_2

    .line 470
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/e;->f()V

    :cond_9
    const/4 p1, 0x0

    :cond_a
    :goto_2
    return p1
.end method

.method public c()V
    .locals 2

    .line 309
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->d:Lmaster/flame/danmaku/danmaku/a/a;

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->d:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/e;->a(Lmaster/flame/danmaku/danmaku/a/a;)V

    const-wide/16 v0, 0x0

    .line 313
    iput-wide v0, p0, Lmaster/flame/danmaku/a/e;->o:J

    iput-wide v0, p0, Lmaster/flame/danmaku/a/e;->n:J

    .line 314
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->e:Lmaster/flame/danmaku/a/h$a;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->e:Lmaster/flame/danmaku/a/h$a;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/h$a;->a()V

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/e;->i:Z

    :cond_1
    return-void
.end method

.method public c(J)V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/e;->d()V

    .line 291
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 292
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->f()V

    .line 293
    iput-wide p1, p0, Lmaster/flame/danmaku/a/e;->l:J

    return-void
.end method

.method public d()V
    .locals 1

    .line 261
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->k:Lmaster/flame/danmaku/danmaku/model/l;

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/a/e;->k:Lmaster/flame/danmaku/danmaku/model/l;

    .line 263
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lmaster/flame/danmaku/a/e;->f:Lmaster/flame/danmaku/danmaku/b/a;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/b/a;->a()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 415
    iput-wide v0, p0, Lmaster/flame/danmaku/a/e;->o:J

    iput-wide v0, p0, Lmaster/flame/danmaku/a/e;->n:J

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/e;->p:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/e;->h:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/e;->p:Z

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/e;->t:Z

    return-void
.end method
