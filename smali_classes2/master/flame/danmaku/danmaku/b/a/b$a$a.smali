.class public Lmaster/flame/danmaku/danmaku/b/a/b$a$a;
.super Lmaster/flame/danmaku/danmaku/model/l$b;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/b/a/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/l$b<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        "Lmaster/flame/danmaku/danmaku/b/a/b$e;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmaster/flame/danmaku/danmaku/model/m;

.field b:I

.field public c:Lmaster/flame/danmaku/danmaku/model/d;

.field public d:Lmaster/flame/danmaku/danmaku/model/d;

.field public e:Lmaster/flame/danmaku/danmaku/model/d;

.field f:Z

.field g:F

.field final synthetic h:Lmaster/flame/danmaku/danmaku/b/a/b$a;


# direct methods
.method protected constructor <init>(Lmaster/flame/danmaku/danmaku/b/a/b$a;)V
    .locals 1

    .line 309
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->h:Lmaster/flame/danmaku/danmaku/b/a/b$a;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$b;-><init>()V

    const/4 p1, 0x0

    .line 311
    iput p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->b:I

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 313
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->f:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 309
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 11

    .line 325
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->h:Lmaster/flame/danmaku/danmaku/b/a/b$a;

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/b/a/b$a;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 328
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->b:I

    .line 329
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 330
    iput-object v3, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 331
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->f:Z

    return v1

    .line 335
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v0, :cond_2

    .line 336
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    .line 337
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->n()F

    move-result v0

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    return v1

    .line 342
    :cond_2
    iget v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->g:F

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/m;->n()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 343
    iput-object v3, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    return v1

    .line 348
    :cond_3
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 349
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->a()J

    move-result-wide v7

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->p()Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-wide v9, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    move-object v5, p1

    .line 348
    invoke-static/range {v4 .. v10}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;JJ)Z

    move-result v0

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->f:Z

    .line 350
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->f:Z

    if-nez v0, :cond_4

    .line 351
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    return v1

    .line 356
    :cond_4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->l()F

    move-result p1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->m()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    sub-float/2addr p1, v0

    iput p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->g:F

    return v2
.end method

.method public a()Lmaster/flame/danmaku/danmaku/b/a/b$e;
    .locals 2

    .line 362
    new-instance v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/b/a/b$e;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V

    .line 363
    iget v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->b:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->a:I

    .line 364
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 365
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->f:Lmaster/flame/danmaku/danmaku/model/d;

    .line 366
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->f:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->i:Z

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->a()Lmaster/flame/danmaku/danmaku/b/a/b$e;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 318
    iput v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->b:I

    const/4 v1, 0x0

    .line 319
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 320
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$a$a;->f:Z

    return-void
.end method
