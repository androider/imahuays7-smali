.class public abstract Lmaster/flame/danmaku/danmaku/model/d;
.super Ljava/lang/Object;
.source "BaseDanmaku.java"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Z

.field protected C:Lmaster/flame/danmaku/danmaku/model/f;

.field protected D:I

.field public E:I

.field public F:I

.field public G:Lmaster/flame/danmaku/danmaku/model/j;

.field public H:I

.field public I:I

.field private J:J

.field private K:I

.field private L:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public a:J

.field public b:Ljava/lang/CharSequence;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:I

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:I

.field public n:B

.field public o:F

.field public p:F

.field public q:Lmaster/flame/danmaku/danmaku/model/g;

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Lmaster/flame/danmaku/danmaku/model/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/n<",
            "*>;"
        }
    .end annotation
.end field

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 104
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->k:F

    .line 109
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->l:I

    .line 114
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->m:I

    .line 119
    iput-byte v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->n:B

    .line 124
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->o:F

    .line 129
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 149
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->K:I

    .line 154
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->t:I

    .line 159
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->u:I

    const/4 v1, -0x1

    .line 164
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->v:I

    .line 184
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->z:I

    .line 204
    sget v2, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->D:I

    .line 206
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:I

    .line 208
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->F:I

    const/4 v2, 0x0

    .line 210
    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    .line 212
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->H:I

    .line 217
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:I

    .line 219
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->L:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/m;)I
    .locals 0

    .line 230
    invoke-interface {p1, p0}, Lmaster/flame/danmaku/danmaku/model/m;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a()J
    .locals 2

    .line 222
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->q:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/g;->a:J

    return-wide v0
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/f;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->C:Lmaster/flame/danmaku/danmaku/model/f;

    return-void
.end method

.method public abstract a(Lmaster/flame/danmaku/danmaku/model/m;FF)V
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/m;Z)V
    .locals 0

    .line 239
    invoke-interface {p1, p0, p2}, Lmaster/flame/danmaku/danmaku/model/m;->b(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    .line 240
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/j;->a:I

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->t:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/j;->b:I

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->K:I

    const/4 p1, 0x1

    .line 301
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->s:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 303
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->s:I

    :goto_0
    return-void
.end method

.method public a(J)Z
    .locals 4

    .line 266
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v0

    sub-long v2, p1, v0

    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->q:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide p1, p1, Lmaster/flame/danmaku/danmaku/model/g;->a:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract a(Lmaster/flame/danmaku/danmaku/model/m;J)[F
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/m;Z)V
    .locals 0

    .line 248
    invoke-interface {p1, p0, p2}, Lmaster/flame/danmaku/danmaku/model/m;->a(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    .line 249
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/j;->f:I

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->v:I

    return-void
.end method

.method public b()Z
    .locals 2

    .line 234
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->o:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->t:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(J)Z
    .locals 4

    .line 274
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v0

    sub-long v2, p1, v0

    const-wide/16 p1, 0x0

    cmp-long v0, v2, p1

    if-lez v0, :cond_1

    .line 275
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->q:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide p1, p1, Lmaster/flame/danmaku/danmaku/model/g;->a:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c(J)V
    .locals 0

    .line 354
    iput-wide p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    .line 355
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/j;->e:I

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->u:I

    return-void
.end method

.method public c()Z
    .locals 2

    .line 244
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->v:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Lmaster/flame/danmaku/danmaku/model/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmaster/flame/danmaku/danmaku/model/n<",
            "*>;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    return-object v0
.end method

.method public d(J)V
    .locals 0

    .line 359
    iput-wide p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->J:J

    const-wide/16 p1, 0x0

    .line 360
    iput-wide p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    return-void
.end method

.method public e()Z
    .locals 3

    .line 257
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->K:I

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/j;->b:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f()Z
    .locals 2

    .line 262
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->C:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->C:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()Z
    .locals 2

    .line 270
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->C:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->C:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h()Z
    .locals 5

    .line 279
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->C:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->C:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()Z
    .locals 2

    .line 283
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->F:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 284
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:I

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 2

    .line 291
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->F:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract k()F
.end method

.method public abstract l()F
.end method

.method public abstract m()F
.end method

.method public abstract n()F
.end method

.method public abstract o()I
.end method

.method public p()Lmaster/flame/danmaku/danmaku/model/f;
    .locals 1

    .line 327
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->C:Lmaster/flame/danmaku/danmaku/model/f;

    return-object v0
.end method

.method public q()I
    .locals 1

    .line 335
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->D:I

    return v0
.end method

.method public r()J
    .locals 2

    .line 364
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->J:J

    return-wide v0
.end method

.method public s()J
    .locals 6

    .line 368
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/j;->e:I

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->u:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->J:J

    iget-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    add-long v4, v0, v2

    return-wide v4

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 369
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    .line 370
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->J:J

    return-wide v0
.end method

.method public t()Z
    .locals 6

    .line 376
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/j;->e:I

    iget v4, p0, Lmaster/flame/danmaku/danmaku/model/d;->u:I

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    iget-wide v4, p0, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 377
    :cond_2
    :goto_0
    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    return v1
.end method
