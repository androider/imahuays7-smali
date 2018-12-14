.class Lmaster/flame/danmaku/danmaku/b/a/b$b;
.super Ljava/lang/Object;
.source "DanmakusRetainer.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/b/a/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/b/a/b$b$a;
    }
.end annotation


# instance fields
.field protected c:Lmaster/flame/danmaku/danmaku/model/android/e;

.field protected d:Z

.field protected e:Lmaster/flame/danmaku/danmaku/b/a/b$b$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b;->c:Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b;->d:Z

    .line 190
    new-instance v0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$b;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b;->e:Lmaster/flame/danmaku/danmaku/b/a/b$b$a;

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/b/a/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b;->d:Z

    .line 290
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b;->c:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->b()V

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/b/a/b$f;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 194
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/m;->n()I

    move-result v0

    int-to-float v0, v0

    .line 198
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->e()Z

    move-result v1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_1

    .line 199
    iget-object v2, v7, Lmaster/flame/danmaku/danmaku/b/a/b$b;->c:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/android/e;->e()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 202
    :goto_0
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/m;->m()I

    move-result v3

    const/4 v4, 0x0

    if-nez v1, :cond_d

    .line 204
    iput-boolean v12, v7, Lmaster/flame/danmaku/danmaku/b/a/b$b;->d:Z

    .line 208
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/b/a/b$b;->e:Lmaster/flame/danmaku/danmaku/b/a/b$b$a;

    iput-object v9, v0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    .line 209
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/b/a/b$b;->e:Lmaster/flame/danmaku/danmaku/b/a/b$b$a;

    iput-object v8, v0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    .line 210
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/b/a/b$b;->c:Lmaster/flame/danmaku/danmaku/model/android/e;

    iget-object v5, v7, Lmaster/flame/danmaku/danmaku/b/a/b$b;->e:Lmaster/flame/danmaku/danmaku/b/a/b$b$a;

    invoke-virtual {v0, v5}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    .line 211
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/b/a/b$b;->e:Lmaster/flame/danmaku/danmaku/b/a/b$b$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->a()Lmaster/flame/danmaku/danmaku/b/a/b$e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 213
    iget v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->a:I

    .line 214
    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->b:Lmaster/flame/danmaku/danmaku/model/d;

    .line 215
    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 216
    iget-object v6, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->d:Lmaster/flame/danmaku/danmaku/model/d;

    .line 217
    iget-object v13, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 218
    iget-boolean v14, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->g:Z

    .line 219
    iget-boolean v15, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->h:Z

    .line 220
    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->i:Z

    move/from16 v18, v14

    move v14, v1

    move/from16 v1, v18

    goto :goto_1

    :cond_2
    move v15, v1

    move v0, v2

    move-object v2, v4

    move-object v5, v2

    move-object v6, v5

    move-object v13, v6

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v6, :cond_3

    .line 225
    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/d;->n()F

    move-result v13

    int-to-float v3, v3

    add-float/2addr v13, v3

    goto :goto_2

    .line 227
    :cond_3
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/d;->l()F

    move-result v13

    :goto_2
    if-eq v2, v8, :cond_4

    move/from16 v17, v0

    move-object v15, v2

    :goto_3
    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    move/from16 v17, v0

    :goto_4
    move/from16 v16, v15

    const/4 v0, 0x1

    :goto_5
    move-object v15, v4

    goto :goto_7

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v13, :cond_6

    .line 233
    invoke-virtual {v13}, Lmaster/flame/danmaku/danmaku/model/d;->l()F

    move-result v2

    move/from16 v17, v0

    move v13, v2

    move-object v15, v4

    const/4 v0, 0x0

    :goto_6
    const/16 v16, 0x0

    goto :goto_7

    :cond_6
    if-eqz v6, :cond_7

    .line 237
    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/d;->n()F

    move-result v0

    int-to-float v2, v3

    add-float/2addr v0, v2

    move v13, v0

    move/from16 v16, v15

    const/4 v0, 0x1

    const/16 v17, 0x0

    goto :goto_5

    :cond_7
    if-eqz v5, :cond_8

    .line 240
    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/d;->l()F

    move-result v2

    move/from16 v17, v0

    move v13, v2

    move-object v15, v5

    goto :goto_3

    .line 244
    :cond_8
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/m;->n()I

    move-result v2

    int-to-float v2, v2

    move/from16 v17, v0

    move v13, v2

    goto :goto_4

    :goto_7
    if-eqz v0, :cond_9

    move-object v0, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v13

    .line 247
    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/b/a/b$b;->a(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;FLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v0

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_a

    .line 251
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/m;->n()I

    move-result v1

    int-to-float v1, v1

    move v13, v1

    const/4 v2, 0x1

    goto :goto_a

    :cond_a
    if-eqz v15, :cond_b

    add-int/lit8 v11, v14, -0x1

    goto :goto_9

    :cond_b
    move v11, v14

    :goto_9
    move/from16 v2, v17

    .line 257
    :goto_a
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/m;->n()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v13, v1

    if-nez v1, :cond_c

    goto :goto_b

    :cond_c
    move/from16 v12, v16

    goto :goto_b

    :cond_d
    move v13, v0

    move v12, v1

    move-object v15, v4

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_b
    if-eqz v10, :cond_e

    .line 262
    invoke-interface {v10, v8, v13, v11, v2}, Lmaster/flame/danmaku/danmaku/b/a/b$f;->a(Lmaster/flame/danmaku/danmaku/model/d;FIZ)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    if-eqz v0, :cond_f

    .line 267
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/b/a/b$b;->a()V

    .line 270
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->k()F

    move-result v0

    invoke-virtual {v8, v9, v0, v13}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/m;FF)V

    if-nez v12, :cond_10

    .line 273
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/b/a/b$b;->c:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0, v15}, Lmaster/flame/danmaku/danmaku/model/android/e;->b(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 274
    iget-object v0, v7, Lmaster/flame/danmaku/danmaku/b/a/b$b;->c:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0, v8}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_10
    return-void
.end method

.method protected a(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;FLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 0

    .line 281
    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/m;->n()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-ltz p1, :cond_2

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lmaster/flame/danmaku/danmaku/model/d;->l()F

    move-result p1

    const/4 p5, 0x0

    cmpl-float p1, p1, p5

    if-gtz p1, :cond_2

    :cond_0
    iget p1, p2, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float/2addr p4, p1

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
