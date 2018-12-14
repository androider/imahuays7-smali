.class Lmaster/flame/danmaku/a/a$a$4;
.super Lmaster/flame/danmaku/danmaku/model/l$b;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/l$b<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Lmaster/flame/danmaku/danmaku/model/d;

.field final synthetic c:I

.field final synthetic d:Lmaster/flame/danmaku/danmaku/model/d;

.field final synthetic e:Z

.field final synthetic f:I

.field final synthetic g:Lmaster/flame/danmaku/a/a$a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/a$a;ILmaster/flame/danmaku/danmaku/model/d;ZI)V
    .locals 0

    .line 433
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a$4;->g:Lmaster/flame/danmaku/a/a$a;

    iput p2, p0, Lmaster/flame/danmaku/a/a$a$4;->c:I

    iput-object p3, p0, Lmaster/flame/danmaku/a/a$a$4;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iput-boolean p4, p0, Lmaster/flame/danmaku/a/a$a$4;->e:Z

    iput p5, p0, Lmaster/flame/danmaku/a/a$a$4;->f:I

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$b;-><init>()V

    const/4 p1, 0x0

    .line 434
    iput p1, p0, Lmaster/flame/danmaku/a/a$a$4;->a:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 433
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/a$a$4;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 6

    .line 444
    iget v0, p0, Lmaster/flame/danmaku/a/a$a$4;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmaster/flame/danmaku/a/a$a$4;->a:I

    iget v1, p0, Lmaster/flame/danmaku/a/a$a$4;->c:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 447
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->d()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 448
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->a()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 451
    :cond_1
    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->o:F

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$4;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->o:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$4;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$4;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    if-ne v3, v4, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:I

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$4;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->l:I

    if-ne v3, v4, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->f:I

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$4;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->f:I

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$4;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$4;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    .line 458
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a$4;->b:Lmaster/flame/danmaku/danmaku/model/d;

    return v2

    .line 461
    :cond_2
    iget-boolean v3, p0, Lmaster/flame/danmaku/a/a$a$4;->e:Z

    if-eqz v3, :cond_3

    return v1

    .line 464
    :cond_3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 467
    :cond_4
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->f()Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    .line 470
    :cond_5
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->d()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$4;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->o:F

    sub-float/2addr v3, v4

    .line 471
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->e()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$4;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    sub-float/2addr v0, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_6

    .line 472
    iget v5, p0, Lmaster/flame/danmaku/a/a$a$4;->f:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_6

    cmpl-float v3, v0, v4

    if-ltz v3, :cond_6

    iget v3, p0, Lmaster/flame/danmaku/a/a$a$4;->f:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    .line 474
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a$4;->b:Lmaster/flame/danmaku/danmaku/model/d;

    return v2

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v1
.end method

.method public a()Lmaster/flame/danmaku/danmaku/model/d;
    .locals 1

    .line 439
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$4;->b:Lmaster/flame/danmaku/danmaku/model/d;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/a$a$4;->a()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    return-object v0
.end method
