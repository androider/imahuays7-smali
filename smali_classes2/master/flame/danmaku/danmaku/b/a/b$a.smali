.class Lmaster/flame/danmaku/danmaku/b/a/b$a;
.super Lmaster/flame/danmaku/danmaku/b/a/b$c;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/b/a/b$a$a;
    }
.end annotation


# instance fields
.field protected a:Lmaster/flame/danmaku/danmaku/b/a/b$a$a;

.field protected b:Lmaster/flame/danmaku/danmaku/model/android/e;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/b/a/b$c;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V

    .line 371
    new-instance v0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$a;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a;->a:Lmaster/flame/danmaku/danmaku/b/a/b$a$a;

    .line 372
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/b/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a;->d:Z

    .line 447
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->b()V

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/b/a/b$f;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 376
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->l()F

    move-result v1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_2

    .line 381
    iget-object v2, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/android/e;->e()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 383
    :goto_1
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/m;->n()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    .line 384
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result v1

    int-to-float v1, v1

    iget v3, v8, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    sub-float/2addr v1, v3

    :cond_3
    const/4 v3, 0x0

    if-nez v0, :cond_8

    .line 388
    iput-boolean v12, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->d:Z

    .line 389
    iget-object v4, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->a:Lmaster/flame/danmaku/danmaku/b/a/b$a$a;

    iput v1, v4, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->g:F

    .line 390
    iget-object v1, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->a:Lmaster/flame/danmaku/danmaku/b/a/b$a$a;

    iput-object v9, v1, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    .line 391
    iget-object v1, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->a:Lmaster/flame/danmaku/danmaku/b/a/b$a$a;

    iput-object v8, v1, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 392
    iget-object v1, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    iget-object v4, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->a:Lmaster/flame/danmaku/danmaku/b/a/b$a$a;

    invoke-virtual {v1, v4}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    .line 393
    iget-object v1, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->a:Lmaster/flame/danmaku/danmaku/b/a/b$a$a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->a()Lmaster/flame/danmaku/danmaku/b/a/b$e;

    move-result-object v1

    .line 394
    iget-object v4, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->a:Lmaster/flame/danmaku/danmaku/b/a/b$a$a;

    iget v13, v4, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->g:F

    if-eqz v1, :cond_4

    .line 396
    iget v0, v1, Lmaster/flame/danmaku/danmaku/b/a/b$e;->a:I

    .line 397
    iget-object v2, v1, Lmaster/flame/danmaku/danmaku/b/a/b$e;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 398
    iget-object v3, v1, Lmaster/flame/danmaku/danmaku/b/a/b$e;->f:Lmaster/flame/danmaku/danmaku/model/d;

    .line 399
    iget-boolean v4, v1, Lmaster/flame/danmaku/danmaku/b/a/b$e;->h:Z

    .line 400
    iget-boolean v1, v1, Lmaster/flame/danmaku/danmaku/b/a/b$e;->i:Z

    move v15, v0

    move/from16 v17, v1

    move-object v5, v2

    move-object v14, v3

    move/from16 v16, v4

    goto :goto_2

    :cond_4
    move/from16 v16, v0

    move/from16 v17, v2

    move-object v5, v3

    move-object v14, v5

    const/4 v15, 0x0

    :goto_2
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v13

    .line 403
    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/b/a/b$a;->a(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;FLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 405
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result v1

    int-to-float v1, v1

    iget v2, v8, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    sub-float/2addr v1, v2

    move v13, v1

    const/4 v2, 0x1

    goto :goto_4

    .line 409
    :cond_5
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/m;->n()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v13, v1

    if-ltz v1, :cond_6

    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    move/from16 v11, v17

    :goto_3
    if-eqz v14, :cond_7

    add-int/lit8 v1, v15, -0x1

    move v2, v11

    move v11, v1

    goto :goto_4

    :cond_7
    move v2, v11

    move v11, v15

    goto :goto_4

    :cond_8
    move/from16 v16, v0

    move v13, v1

    move-object v14, v3

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_4
    if-eqz v10, :cond_9

    .line 419
    invoke-interface {v10, v8, v13, v11, v2}, Lmaster/flame/danmaku/danmaku/b/a/b$f;->a(Lmaster/flame/danmaku/danmaku/model/d;FIZ)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    if-eqz v0, :cond_a

    .line 424
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/b/a/b$a;->a()V

    .line 427
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->k()F

    move-result v0

    invoke-virtual {v8, v9, v0, v13}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/m;FF)V

    if-nez v16, :cond_b

    .line 430
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0, v14}, Lmaster/flame/danmaku/danmaku/model/android/e;->b(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 431
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/b/a/b$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0, v8}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_b
    return-void
.end method

.method protected a(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;FLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 0

    .line 438
    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/m;->n()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-ltz p1, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lmaster/flame/danmaku/danmaku/model/d;->n()F

    move-result p1

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
