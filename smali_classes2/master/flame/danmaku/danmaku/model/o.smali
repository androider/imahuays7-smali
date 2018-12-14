.class public Lmaster/flame/danmaku/danmaku/model/o;
.super Lmaster/flame/danmaku/danmaku/model/p;
.source "L2RDanmaku.java"


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/g;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/p;-><init>(Lmaster/flame/danmaku/danmaku/model/g;)V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/m;FF)V
    .locals 6

    .line 28
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/o;->C:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz p2, :cond_2

    .line 29
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/o;->C:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, p2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    .line 30
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/o;->s()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v4, v2

    if-lez p2, :cond_1

    .line 31
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/o;->q:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v2, p2, Lmaster/flame/danmaku/danmaku/model/g;->a:J

    cmp-long p2, v4, v2

    if-gez p2, :cond_1

    .line 32
    invoke-virtual {p0, p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/o;->b(Lmaster/flame/danmaku/danmaku/model/m;J)F

    move-result p1

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/o;->J:F

    .line 33
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/o;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 34
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/o;->K:F

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/o;->a(Z)V

    .line 37
    :cond_0
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/o;->O:J

    return-void

    .line 40
    :cond_1
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/o;->O:J

    :cond_2
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/o;->a(Z)V

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/m;J)[F
    .locals 1

    .line 47
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/o;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/o;->b(Lmaster/flame/danmaku/danmaku/model/m;J)F

    move-result p1

    .line 50
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/o;->M:[F

    if-nez p2, :cond_1

    const/4 p2, 0x4

    .line 51
    new-array p2, p2, [F

    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/o;->M:[F

    .line 53
    :cond_1
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/o;->M:[F

    const/4 p3, 0x0

    aput p1, p2, p3

    .line 54
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/o;->M:[F

    const/4 p3, 0x1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/o;->K:F

    aput v0, p2, p3

    .line 55
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/o;->M:[F

    const/4 p3, 0x2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/o;->o:F

    add-float/2addr p1, v0

    aput p1, p2, p3

    .line 56
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/o;->M:[F

    const/4 p2, 0x3

    iget p3, p0, Lmaster/flame/danmaku/danmaku/model/o;->K:F

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/o;->p:F

    add-float/2addr p3, v0

    aput p3, p1, p2

    .line 57
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/o;->M:[F

    return-object p1
.end method

.method protected b(Lmaster/flame/danmaku/danmaku/model/m;J)F
    .locals 4

    .line 61
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/o;->s()J

    move-result-wide v0

    sub-long v2, p2, v0

    .line 62
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/o;->q:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide p2, p2, Lmaster/flame/danmaku/danmaku/model/g;->a:J

    cmp-long v0, v2, p2

    if-ltz v0, :cond_0

    .line 63
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->e()I

    move-result p1

    int-to-float p1, p1

    return p1

    .line 65
    :cond_0
    iget p1, p0, Lmaster/flame/danmaku/danmaku/model/o;->N:F

    long-to-float p2, v2

    mul-float p1, p1, p2

    iget p2, p0, Lmaster/flame/danmaku/danmaku/model/o;->o:F

    sub-float/2addr p1, p2

    return p1
.end method

.method public k()F
    .locals 1

    .line 70
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/o;->J:F

    return v0
.end method

.method public l()F
    .locals 1

    .line 75
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/o;->K:F

    return v0
.end method

.method public m()F
    .locals 2

    .line 80
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/o;->J:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/o;->o:F

    add-float/2addr v0, v1

    return v0
.end method

.method public n()F
    .locals 2

    .line 85
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/o;->K:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/o;->p:F

    add-float/2addr v0, v1

    return v0
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
