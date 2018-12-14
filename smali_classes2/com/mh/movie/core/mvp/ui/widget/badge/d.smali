.class public Lcom/mh/movie/core/mvp/ui/widget/badge/d;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public static a(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr p0, v0

    const-wide v0, 0x4076800000000000L    # 360.0

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static a(DI)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    int-to-double v2, p2

    mul-double v2, v2, v0

    add-double/2addr p0, v2

    return-wide p0
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 2

    .line 27
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 28
    iget v0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 30
    :cond_0
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 33
    :cond_1
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 34
    iget v0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 36
    :cond_2
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "F",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float p2, v0

    float-to-double v0, p2

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double p1, p1

    mul-double v2, v2, p1

    double-to-float v2, v2

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, p1

    double-to-float p1, v0

    move p2, p1

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 65
    :goto_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iget v2, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    .line 44
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
