.class public Lmaster/flame/danmaku/danmaku/c/a;
.super Ljava/lang/Object;
.source "DanmakuUtils.java"


# direct methods
.method public static a(III)I
    .locals 0

    mul-int p0, p0, p1

    mul-int p0, p0, p2

    return p0
.end method

.method public static a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/android/f;I)Lmaster/flame/danmaku/danmaku/model/android/f;
    .locals 6

    if-nez p2, :cond_0

    .line 90
    new-instance p2, Lmaster/flame/danmaku/danmaku/model/android/f;

    invoke-direct {p2}, Lmaster/flame/danmaku/danmaku/model/android/f;-><init>()V

    .line 92
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->o:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->h()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/f;->a(IIIZI)V

    .line 93
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/f;->h()Lmaster/flame/danmaku/danmaku/model/android/g;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 95
    move-object v0, p1

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/b;

    iget-object v2, p3, Lmaster/flame/danmaku/danmaku/model/android/g;->a:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/b;->a(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/Object;FFZ)V

    .line 96
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 97
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->e()I

    move-result p0

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result v0

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->k()I

    move-result v1

    .line 98
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->l()I

    move-result p1

    .line 97
    invoke-virtual {p3, p0, v0, v1, p1}, Lmaster/flame/danmaku/danmaku/model/android/g;->a(IIII)V

    :cond_1
    return-object p2
.end method

.method public static a(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/CharSequence;)V
    .locals 2

    .line 161
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/n"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 167
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 168
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->c:[Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(II[F[F)Z
    .locals 3

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 76
    aget p0, p3, v0

    aget p1, p2, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/4 v2, 0x6

    if-ne p0, v2, :cond_4

    .line 81
    aget p0, p3, p1

    aget p1, p2, v0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    return v0
.end method

.method public static final a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 119
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    return v3

    .line 122
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method private static a(Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;J)Z
    .locals 1

    .line 63
    invoke-virtual {p1, p0, p3, p4}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/m;J)[F

    move-result-object v0

    .line 64
    invoke-virtual {p2, p0, p3, p4}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/m;J)[F

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result p1

    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result p2

    invoke-static {p1, p2, v0, p0}, Lmaster/flame/danmaku/danmaku/c/a;->a(II[F[F)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;JJ)Z
    .locals 9

    .line 38
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v0

    .line 39
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 44
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 47
    :cond_1
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v5

    sub-long v7, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v7, v3

    const/4 v3, 0x1

    if-gtz v1, :cond_2

    return v3

    .line 50
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v1, v4, p3

    if-gez v1, :cond_8

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x5

    if-eq v0, p3, :cond_7

    const/4 p3, 0x4

    if-ne v0, p3, :cond_4

    goto :goto_0

    .line 58
    :cond_4
    invoke-static {p0, p1, p2, p5, p6}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;J)Z

    move-result p3

    if-nez p3, :cond_5

    .line 59
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide p3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->a()J

    move-result-wide p5

    add-long v0, p3, p5

    invoke-static {p0, p1, p2, v0, v1}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;J)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v3

    :cond_8
    :goto_1
    return v2
.end method

.method public static final b(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 8

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, -0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 142
    :cond_2
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->r()J

    move-result-wide v2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->r()J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v4, v6, v2

    if-lez v4, :cond_3

    return v1

    :cond_3
    cmp-long v4, v6, v2

    if-gez v4, :cond_4

    return v0

    .line 148
    :cond_4
    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->r:I

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->r:I

    sub-int/2addr v2, p1

    if-eqz v2, :cond_6

    if-gez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 152
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method
